using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;
using System.IO;
using System.Text.RegularExpressions;
using System.Diagnostics;

namespace ThreejsDocumentator
{
    public partial class MainForm : Form
    {
		string typeScriptFile = @"..\..\native-ts\threejs\three.d.ts";
		string javaScriptDir  = @"..\..\native-js\src";
		string docDir         = @"..\..\native-js\docs";
        
        public MainForm()
        {
            InitializeComponent();
        }

        void MainForm_Load(object sender, EventArgs e)
        {
			if (!Directory.Exists(javaScriptDir))
			{
				MessageBox.Show("Please, run 'make native-js' in the base directory.");
				Close();
			}

			typeScriptFile = Path.GetFullPath(typeScriptFile);
			javaScriptDir = Path.GetFullPath(javaScriptDir);
			docDir = Path.GetFullPath(docDir);

            typeScriptText.Text = File.ReadAllText(typeScriptFile);
            var reTsItems = new Regex(@"(?:class|interface|enum)\s+([a-z_][a-z0-9_]*)", RegexOptions.IgnoreCase);
            var tsItems = new List<String>();
            foreach (Match match in reTsItems.Matches(typeScriptText.Text))
            {
                tsItems.Add(match.Groups[1].Value);
            }
            tsItems.Sort();
            typeScriptSelector.Items.Add(new Item(""));
			foreach (var item in tsItems) typeScriptSelector.Items.Add(new Item(item));

			var jsItems = new List<Item>();
			foreach (var file in Directory.GetFiles(javaScriptDir, "*.js", SearchOption.AllDirectories))
			{
				jsItems.Add(new Item(file));
			}
			jsItems.Sort();
			javaScriptFileSelector.Items.Add(new Item(""));
			foreach (var item in jsItems) javaScriptFileSelector.Items.Add(item);

			var docItems = new List<Item>();
			foreach (var file in Directory.GetFiles(docDir + "\\api", "*.html", SearchOption.AllDirectories))
			{
				docItems.Add(new Item(file));
			}
			docItems.Sort();
			docFileSelector.Items.Add(new Item(""));
			foreach (var item in docItems) docFileSelector.Items.Add(item);

			fixTabs();
		    switchTo("");
        }

        void switchTo(string s)
        {
			switchComplex(s, javaScriptFileSelector, javaScriptFileText);
			switchComplex(s, docFileSelector, docFileText);
			
			selectByText(s, typeScriptSelector);
			var reTsItem = new Regex(@"(?:class|interface|enum)\s+" + s + "\\b", RegexOptions.None);
			var m = reTsItem.Match(typeScriptText.Text);
			if (m.Success)
			{
				typeScriptText.Select(m.Index, 0);
				typeScriptText.ScrollToCaret();
			}

			if (s != "")
			{
				var uri = ((Item)docFileSelector.SelectedItem).path;
				if (uri != "")
				{
					docFileHtml.Url = new Uri(uri);
					docFileHtml.Show();
				}
				else
				{
					docFileHtml.Hide();
				}
			}
			else
			{
				docFileHtml.Hide();
			}
        }

		void switchComplex(String s, ComboBox selector, RichTextBox textBox)
		{
			selectByText(s, selector);

			textBox.Text = selector.SelectedItem.ToString() != ""
				? File.ReadAllText(((Item)selector.SelectedItem).path)
				: "";

			fixBackColor(textBox);
		}

		void selectByText(String s, ComboBox selector)
		{
			var index = 0;
			foreach (var item in selector.Items)
			{
				if (item.ToString() == s) break;
				index++;
			}
			selector.SelectedIndex = index < selector.Items.Count ? index : 0;
		}

        void highlightString(RichTextBox textBox, string s)
        {
			textBox.SelectAll();
			textBox.SelectionBackColor = textBox.BackColor;
			textBox.Select(0, 0);
		   
		    int textEnd = textBox.TextLength;
            Font fnt = new Font(textBox.Font, FontStyle.Bold);
            int index = 0;
			while (index < textBox.Text.Length)
            {
				index = textBox.Find(s, index, textEnd, RichTextBoxFinds.MatchCase | RichTextBoxFinds.WholeWord);
				textBox.SelectionBackColor = Color.Yellow;
				if (index < 0) break;
				index += s.Length;
            }
        }

        void highlightRegex(RichTextBox textBox, Regex re)
        {
            textBox.SelectAll();
            textBox.SelectionColor = Color.Black;
            textBox.SelectionBackColor = Color.White;
            MatchCollection matches = re.Matches(textBox.Text);

            if (matches.Count > 0)
            {
                foreach (Match m in matches)
                {
                    textBox.Select(m.Index, m.Length);
                    textBox.SelectionColor = Color.Red;
                    textBox.SelectionBackColor = Color.Black;
                }
            }
        }

		void fixBackColor(RichTextBox textBox)
		{
			textBox.BackColor = textBox.ReadOnly ? Color.Snow : Color.White;
		}

		void fixTabs()
		{
            var charWidth = TextRenderer.MeasureText(" ", typeScriptText.Font).Width / 2;
            var tabs = new List<int>();
            for (var i = 1; i <= 10; i++) tabs.Add(i * charWidth * 4);
			
			typeScriptText.SelectionTabs = tabs.ToArray();
			javaScriptFileText.SelectionTabs = tabs.ToArray();
			docFileText.SelectionTabs = tabs.ToArray();
		}

        private void typeScriptSelector_SelectedIndexChanged(object sender, EventArgs e)
        {
			switchTo((string)typeScriptSelector.SelectedItem.ToString());
        }

        private void javaScriptFileSelector_SelectedIndexChanged(object sender, EventArgs e)
        {
			switchTo((string)javaScriptFileSelector.SelectedItem.ToString());
        }

		private void docFileSelector_SelectedIndexChanged(object sender, EventArgs e)
        {
			switchTo(docFileSelector.SelectedItem.ToString());
        }

		private void typeScriptText_Leave(object sender, EventArgs e)
		{
			var old = File.ReadAllText(typeScriptFile).Replace("\r\n", "\n");
			if (old != typeScriptText.Text)
			{
				File.WriteAllText(typeScriptFile, typeScriptText.Text.Replace("\n", "\r\n"));
				Debug.WriteLine("TypeScript saved.");
			}
		}

		private void prev_Click(object sender, EventArgs e)
		{
			var values = new List<String>();
			if (typeScriptSelector.SelectedIndex		> 0) values.Add(typeScriptSelector.Items[typeScriptSelector.SelectedIndex - 1].ToString());
			if (javaScriptFileSelector.SelectedIndex	> 0) values.Add(javaScriptFileSelector.Items[javaScriptFileSelector.SelectedIndex - 1].ToString());
			if (docFileSelector.SelectedIndex			> 0) values.Add(docFileSelector.Items[docFileSelector.SelectedIndex - 1].ToString());
			values.Sort();
			if (values.Count > 0) switchTo(values[values.Count - 1]);
		}

		private void next_Click(object sender, EventArgs e)
		{
			var values = new List<String>();
			if (typeScriptSelector.SelectedIndex		< typeScriptSelector.Items.Count - 1)		values.Add(typeScriptSelector.Items[typeScriptSelector.SelectedIndex + 1].ToString());
			if (javaScriptFileSelector.SelectedIndex	< javaScriptFileSelector.Items.Count - 1)	values.Add(javaScriptFileSelector.Items[javaScriptFileSelector.SelectedIndex + 1].ToString());
			if (docFileSelector.SelectedIndex			< docFileSelector.Items.Count - 1)			values.Add(docFileSelector.Items[docFileSelector.SelectedIndex + 1].ToString());
			values.Sort();
			if (values.Count > 0) switchTo(values[0]);
		}

		private void docFileText_TextChanged(object sender, EventArgs e)
		{
			if (docFileSelector.SelectedItem == null) return;
			
			var path = ((Item)docFileSelector.SelectedItem).path;
			if (path != "")
			{
				var old = File.ReadAllText(path).Replace("\r\n", "\n");
				if (old != docFileText.Text)
				{
					File.WriteAllText(path, docFileText.Text.Replace("\n", "\r\n"));
					Debug.WriteLine(path + " saved.");
					docFileHtml.Refresh();
				}
			}
		}

		private void searchString_TextUpdate(object sender, EventArgs e)
		{
			highlightString(javaScriptFileText, searchString.Text);
			highlightString(typeScriptText, searchString.Text);
			highlightString(docFileText, searchString.Text);
		}
    }
}

