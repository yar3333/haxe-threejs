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
        string oldHaxeDir     = @"d:\MyProg\_haxelibs\threejs\manual-old\js\three";
        string newHaxeDir     = @"d:\MyProg\_haxelibs\threejs\library\js\three";
        string typeScriptFile = @"d:\MyProg\_haxelibs\threejs\native\threejs\three.d.ts";
		string javaScriptDir  = @"d:\MyProg\_haxelibs\threejs\original\src";
		string docDir         = @"d:\MyProg\_haxelibs\threejs\original\docs";
        
        public MainForm()
        {
            InitializeComponent();
        }

        void MainForm_Load(object sender, EventArgs e)
        {
            oldHaxeFileSelector.Items.Add(new Item(""));
            foreach (var file in Directory.GetFiles(oldHaxeDir, "*.hx"))
            {
                oldHaxeFileSelector.Items.Add(new Item((file)));
            }

            newHaxeFileSelector.Items.Add(new Item(""));
            foreach (var file in Directory.GetFiles(newHaxeDir, "*.hx"))
            {
                newHaxeFileSelector.Items.Add(new Item(file));
            }

            typeScriptText.Text = File.ReadAllText(typeScriptFile);
            var reTsItems = new Regex(@"(?:class|interface|enum)\s+([a-z_][a-z0-9_]*)", RegexOptions.IgnoreCase);
            var tsItems = new List<String>();
            foreach (Match match in reTsItems.Matches(typeScriptText.Text))
            {
                tsItems.Add(match.Groups[1].Value);
            }
            tsItems.Sort();
            typeScriptSelector.Items.Add(new Item(""));
			foreach (var tsItem in tsItems)
			{
				typeScriptSelector.Items.Add(new Item(tsItem));
			}

			javaScriptFileSelector.Items.Add(new Item(""));
			foreach (var file in Directory.GetFiles(javaScriptDir, "*.js", SearchOption.AllDirectories))
			{
				javaScriptFileSelector.Items.Add(new Item(file));
			}
			
			docFileSelector.Items.Add(new Item(""));
			foreach (var file in Directory.GetFiles(docDir + "\\api", "*.html", SearchOption.AllDirectories))
			{
				docFileSelector.Items.Add(new Item(file));
			}

			fixTabs();
		    switchTo("");
        }

        void switchTo(string s)
        {
			switchComplex(s, oldHaxeFileSelector, oldHaxeFileText);
			switchComplex(s, newHaxeFileSelector, newHaxeFileText);
			switchComplex(s, javaScriptFileSelector, javaScriptFileText);
			switchComplex(s, docFileSelector, docFileText);
			
            highlightString(oldHaxeFileText, "Int");

			selectByText(s, typeScriptSelector);
			var reTsItem = new Regex(@"(?:class|interface|enum)\s+" + s, RegexOptions.None);
			var m = reTsItem.Match(typeScriptText.Text);
			if (m.Success)
			{
				typeScriptText.Select(m.Index, 0);
				typeScriptText.ScrollToCaret();
			}

			if (s != "")
			{
				docFileHtml.Show();
				//var uri = "http://threejs/" + ((Item)docFileSelector.SelectedItem).path.Substring(docDir.Length + 1).Replace("\\", "/");
				var uri = ((Item)docFileSelector.SelectedItem).path;
				Debug.WriteLine("uri = " + uri);
				docFileHtml.Url = new Uri(uri);
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
            int textEnd = textBox.TextLength;
            Font fnt = new Font(textBox.Font, FontStyle.Bold);
            int index = 0;
            int lastIndex = textBox.Text.LastIndexOf(s);
            while (index < lastIndex)
            {
				textBox.Find(s, index, textEnd, RichTextBoxFinds.MatchCase | RichTextBoxFinds.WholeWord);
                textBox.SelectionBackColor = Color.Yellow;
                index = textBox.Text.IndexOf(s, index) + 1;
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
            var charWidth = TextRenderer.MeasureText(" ", oldHaxeFileText.Font).Width / 2;
            var tabs = new List<int>();
            for (var i = 1; i <= 10; i++) tabs.Add(i * charWidth * 4);
			
			oldHaxeFileText.SelectionTabs = tabs.ToArray();
			newHaxeFileText.SelectionTabs = tabs.ToArray();
			typeScriptText.SelectionTabs = tabs.ToArray();
			javaScriptFileText.SelectionTabs = tabs.ToArray();
			docFileText.SelectionTabs = tabs.ToArray();
		}


        void oldHaxeFileSelector_SelectedIndexChanged(object sender, EventArgs e)
        {
			switchTo(oldHaxeFileSelector.SelectedItem.ToString());
        }

        private void newHaxeFileSelector_SelectedIndexChanged(object sender, EventArgs e)
        {
			switchTo((string)newHaxeFileSelector.SelectedItem.ToString());
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
			if (oldHaxeFileSelector.SelectedIndex		> 0) values.Add(oldHaxeFileSelector.Items[oldHaxeFileSelector.SelectedIndex - 1].ToString());
			if (newHaxeFileSelector.SelectedIndex		> 0) values.Add(newHaxeFileSelector.Items[newHaxeFileSelector.SelectedIndex - 1].ToString());
			if (typeScriptSelector.SelectedIndex		> 0) values.Add(typeScriptSelector.Items[typeScriptSelector.SelectedIndex - 1].ToString());
			if (javaScriptFileSelector.SelectedIndex	> 0) values.Add(javaScriptFileSelector.Items[javaScriptFileSelector.SelectedIndex - 1].ToString());
			if (docFileSelector.SelectedIndex			> 0) values.Add(docFileSelector.Items[docFileSelector.SelectedIndex - 1].ToString());
			values.Sort();
			if (values.Count > 0) switchTo(values[values.Count - 1]);
		}

		private void next_Click(object sender, EventArgs e)
		{
			var values = new List<String>();
			if (oldHaxeFileSelector.SelectedIndex		< oldHaxeFileSelector.Items.Count-1)		values.Add(oldHaxeFileSelector.Items[oldHaxeFileSelector.SelectedIndex + 1].ToString());
			if (newHaxeFileSelector.SelectedIndex		< newHaxeFileSelector.Items.Count - 1)		values.Add(newHaxeFileSelector.Items[newHaxeFileSelector.SelectedIndex + 1].ToString());
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
    }
}

