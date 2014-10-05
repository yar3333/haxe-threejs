namespace ThreejsDocumentator
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
			this.label1 = new System.Windows.Forms.Label();
			this.oldHaxeFileSelector = new System.Windows.Forms.ComboBox();
			this.oldHaxeFileText = new System.Windows.Forms.RichTextBox();
			this.newHaxeFileText = new System.Windows.Forms.RichTextBox();
			this.newHaxeFileSelector = new System.Windows.Forms.ComboBox();
			this.label2 = new System.Windows.Forms.Label();
			this.splitContainer1 = new System.Windows.Forms.SplitContainer();
			this.splitContainer2 = new System.Windows.Forms.SplitContainer();
			this.splitContainer3 = new System.Windows.Forms.SplitContainer();
			this.label3 = new System.Windows.Forms.Label();
			this.typeScriptText = new System.Windows.Forms.RichTextBox();
			this.typeScriptSelector = new System.Windows.Forms.ComboBox();
			this.splitContainer4 = new System.Windows.Forms.SplitContainer();
			this.label4 = new System.Windows.Forms.Label();
			this.javaScriptFileText = new System.Windows.Forms.RichTextBox();
			this.javaScriptFileSelector = new System.Windows.Forms.ComboBox();
			this.splitContainer5 = new System.Windows.Forms.SplitContainer();
			this.label5 = new System.Windows.Forms.Label();
			this.docFileText = new System.Windows.Forms.RichTextBox();
			this.docFileSelector = new System.Windows.Forms.ComboBox();
			this.next = new System.Windows.Forms.Button();
			this.prev = new System.Windows.Forms.Button();
			this.docFileHtml = new System.Windows.Forms.WebBrowser();
			((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
			this.splitContainer1.Panel1.SuspendLayout();
			this.splitContainer1.Panel2.SuspendLayout();
			this.splitContainer1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.splitContainer2)).BeginInit();
			this.splitContainer2.Panel1.SuspendLayout();
			this.splitContainer2.Panel2.SuspendLayout();
			this.splitContainer2.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.splitContainer3)).BeginInit();
			this.splitContainer3.Panel1.SuspendLayout();
			this.splitContainer3.Panel2.SuspendLayout();
			this.splitContainer3.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.splitContainer4)).BeginInit();
			this.splitContainer4.Panel1.SuspendLayout();
			this.splitContainer4.Panel2.SuspendLayout();
			this.splitContainer4.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.splitContainer5)).BeginInit();
			this.splitContainer5.Panel1.SuspendLayout();
			this.splitContainer5.Panel2.SuspendLayout();
			this.splitContainer5.SuspendLayout();
			this.SuspendLayout();
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Location = new System.Drawing.Point(3, 3);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(65, 13);
			this.label1.TabIndex = 1;
			this.label1.Text = "Old haxe file";
			// 
			// oldHaxeFileSelector
			// 
			this.oldHaxeFileSelector.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.oldHaxeFileSelector.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
			this.oldHaxeFileSelector.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.oldHaxeFileSelector.FormattingEnabled = true;
			this.oldHaxeFileSelector.Location = new System.Drawing.Point(6, 19);
			this.oldHaxeFileSelector.Name = "oldHaxeFileSelector";
			this.oldHaxeFileSelector.Size = new System.Drawing.Size(216, 21);
			this.oldHaxeFileSelector.TabIndex = 3;
			this.oldHaxeFileSelector.SelectedIndexChanged += new System.EventHandler(this.oldHaxeFileSelector_SelectedIndexChanged);
			// 
			// oldHaxeFileText
			// 
			this.oldHaxeFileText.AcceptsTab = true;
			this.oldHaxeFileText.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.oldHaxeFileText.Font = new System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
			this.oldHaxeFileText.Location = new System.Drawing.Point(6, 46);
			this.oldHaxeFileText.Name = "oldHaxeFileText";
			this.oldHaxeFileText.ReadOnly = true;
			this.oldHaxeFileText.Size = new System.Drawing.Size(216, 503);
			this.oldHaxeFileText.TabIndex = 4;
			this.oldHaxeFileText.Text = "";
			this.oldHaxeFileText.WordWrap = false;
			// 
			// newHaxeFileText
			// 
			this.newHaxeFileText.AcceptsTab = true;
			this.newHaxeFileText.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.newHaxeFileText.Font = new System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
			this.newHaxeFileText.Location = new System.Drawing.Point(3, 46);
			this.newHaxeFileText.Name = "newHaxeFileText";
			this.newHaxeFileText.ReadOnly = true;
			this.newHaxeFileText.Size = new System.Drawing.Size(215, 503);
			this.newHaxeFileText.TabIndex = 7;
			this.newHaxeFileText.Text = "";
			this.newHaxeFileText.WordWrap = false;
			// 
			// newHaxeFileSelector
			// 
			this.newHaxeFileSelector.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.newHaxeFileSelector.FormattingEnabled = true;
			this.newHaxeFileSelector.Location = new System.Drawing.Point(6, 19);
			this.newHaxeFileSelector.Name = "newHaxeFileSelector";
			this.newHaxeFileSelector.Size = new System.Drawing.Size(212, 21);
			this.newHaxeFileSelector.TabIndex = 6;
			this.newHaxeFileSelector.SelectedIndexChanged += new System.EventHandler(this.newHaxeFileSelector_SelectedIndexChanged);
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Location = new System.Drawing.Point(3, 3);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(71, 13);
			this.label2.TabIndex = 5;
			this.label2.Text = "New haxe file";
			// 
			// splitContainer1
			// 
			this.splitContainer1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.splitContainer1.Location = new System.Drawing.Point(12, 12);
			this.splitContainer1.Name = "splitContainer1";
			// 
			// splitContainer1.Panel1
			// 
			this.splitContainer1.Panel1.Controls.Add(this.label1);
			this.splitContainer1.Panel1.Controls.Add(this.oldHaxeFileSelector);
			this.splitContainer1.Panel1.Controls.Add(this.oldHaxeFileText);
			// 
			// splitContainer1.Panel2
			// 
			this.splitContainer1.Panel2.Controls.Add(this.splitContainer2);
			this.splitContainer1.Size = new System.Drawing.Size(1197, 552);
			this.splitContainer1.SplitterDistance = 225;
			this.splitContainer1.TabIndex = 8;
			// 
			// splitContainer2
			// 
			this.splitContainer2.Dock = System.Windows.Forms.DockStyle.Fill;
			this.splitContainer2.Location = new System.Drawing.Point(0, 0);
			this.splitContainer2.Name = "splitContainer2";
			// 
			// splitContainer2.Panel1
			// 
			this.splitContainer2.Panel1.Controls.Add(this.label2);
			this.splitContainer2.Panel1.Controls.Add(this.newHaxeFileText);
			this.splitContainer2.Panel1.Controls.Add(this.newHaxeFileSelector);
			// 
			// splitContainer2.Panel2
			// 
			this.splitContainer2.Panel2.Controls.Add(this.splitContainer3);
			this.splitContainer2.Size = new System.Drawing.Size(968, 552);
			this.splitContainer2.SplitterDistance = 221;
			this.splitContainer2.TabIndex = 0;
			// 
			// splitContainer3
			// 
			this.splitContainer3.Dock = System.Windows.Forms.DockStyle.Fill;
			this.splitContainer3.Location = new System.Drawing.Point(0, 0);
			this.splitContainer3.Name = "splitContainer3";
			// 
			// splitContainer3.Panel1
			// 
			this.splitContainer3.Panel1.Controls.Add(this.label3);
			this.splitContainer3.Panel1.Controls.Add(this.typeScriptText);
			this.splitContainer3.Panel1.Controls.Add(this.typeScriptSelector);
			// 
			// splitContainer3.Panel2
			// 
			this.splitContainer3.Panel2.Controls.Add(this.splitContainer4);
			this.splitContainer3.Size = new System.Drawing.Size(743, 552);
			this.splitContainer3.SplitterDistance = 239;
			this.splitContainer3.TabIndex = 0;
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Location = new System.Drawing.Point(3, 3);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(58, 13);
			this.label3.TabIndex = 9;
			this.label3.Text = "TypeScript";
			// 
			// typeScriptText
			// 
			this.typeScriptText.AcceptsTab = true;
			this.typeScriptText.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.typeScriptText.Font = new System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
			this.typeScriptText.Location = new System.Drawing.Point(3, 46);
			this.typeScriptText.Name = "typeScriptText";
			this.typeScriptText.Size = new System.Drawing.Size(233, 503);
			this.typeScriptText.TabIndex = 11;
			this.typeScriptText.Text = "";
			this.typeScriptText.WordWrap = false;
			this.typeScriptText.Leave += new System.EventHandler(this.typeScriptText_Leave);
			// 
			// typeScriptSelector
			// 
			this.typeScriptSelector.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.typeScriptSelector.FormattingEnabled = true;
			this.typeScriptSelector.Location = new System.Drawing.Point(6, 19);
			this.typeScriptSelector.Name = "typeScriptSelector";
			this.typeScriptSelector.Size = new System.Drawing.Size(230, 21);
			this.typeScriptSelector.TabIndex = 10;
			this.typeScriptSelector.SelectedIndexChanged += new System.EventHandler(this.typeScriptSelector_SelectedIndexChanged);
			// 
			// splitContainer4
			// 
			this.splitContainer4.Dock = System.Windows.Forms.DockStyle.Fill;
			this.splitContainer4.Location = new System.Drawing.Point(0, 0);
			this.splitContainer4.Name = "splitContainer4";
			// 
			// splitContainer4.Panel1
			// 
			this.splitContainer4.Panel1.Controls.Add(this.label4);
			this.splitContainer4.Panel1.Controls.Add(this.javaScriptFileText);
			this.splitContainer4.Panel1.Controls.Add(this.javaScriptFileSelector);
			// 
			// splitContainer4.Panel2
			// 
			this.splitContainer4.Panel2.Controls.Add(this.splitContainer5);
			this.splitContainer4.Size = new System.Drawing.Size(500, 552);
			this.splitContainer4.SplitterDistance = 257;
			this.splitContainer4.TabIndex = 0;
			// 
			// label4
			// 
			this.label4.AutoSize = true;
			this.label4.Location = new System.Drawing.Point(3, 3);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(73, 13);
			this.label4.TabIndex = 9;
			this.label4.Text = "JavaScript file";
			// 
			// javaScriptFileText
			// 
			this.javaScriptFileText.AcceptsTab = true;
			this.javaScriptFileText.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.javaScriptFileText.Font = new System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
			this.javaScriptFileText.Location = new System.Drawing.Point(3, 46);
			this.javaScriptFileText.Name = "javaScriptFileText";
			this.javaScriptFileText.ReadOnly = true;
			this.javaScriptFileText.Size = new System.Drawing.Size(251, 503);
			this.javaScriptFileText.TabIndex = 11;
			this.javaScriptFileText.Text = "";
			this.javaScriptFileText.WordWrap = false;
			// 
			// javaScriptFileSelector
			// 
			this.javaScriptFileSelector.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.javaScriptFileSelector.FormattingEnabled = true;
			this.javaScriptFileSelector.Location = new System.Drawing.Point(6, 19);
			this.javaScriptFileSelector.Name = "javaScriptFileSelector";
			this.javaScriptFileSelector.Size = new System.Drawing.Size(248, 21);
			this.javaScriptFileSelector.TabIndex = 10;
			this.javaScriptFileSelector.SelectedIndexChanged += new System.EventHandler(this.javaScriptFileSelector_SelectedIndexChanged);
			// 
			// splitContainer5
			// 
			this.splitContainer5.Dock = System.Windows.Forms.DockStyle.Fill;
			this.splitContainer5.Location = new System.Drawing.Point(0, 0);
			this.splitContainer5.Name = "splitContainer5";
			this.splitContainer5.Orientation = System.Windows.Forms.Orientation.Horizontal;
			// 
			// splitContainer5.Panel1
			// 
			this.splitContainer5.Panel1.Controls.Add(this.label5);
			this.splitContainer5.Panel1.Controls.Add(this.docFileText);
			this.splitContainer5.Panel1.Controls.Add(this.docFileSelector);
			// 
			// splitContainer5.Panel2
			// 
			this.splitContainer5.Panel2.Controls.Add(this.docFileHtml);
			this.splitContainer5.Size = new System.Drawing.Size(239, 552);
			this.splitContainer5.SplitterDistance = 265;
			this.splitContainer5.TabIndex = 0;
			// 
			// label5
			// 
			this.label5.AutoSize = true;
			this.label5.Location = new System.Drawing.Point(3, 3);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(43, 13);
			this.label5.TabIndex = 12;
			this.label5.Text = "Doc file";
			// 
			// docFileText
			// 
			this.docFileText.AcceptsTab = true;
			this.docFileText.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.docFileText.Font = new System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
			this.docFileText.Location = new System.Drawing.Point(6, 46);
			this.docFileText.Name = "docFileText";
			this.docFileText.Size = new System.Drawing.Size(230, 216);
			this.docFileText.TabIndex = 14;
			this.docFileText.Text = "";
			this.docFileText.WordWrap = false;
			this.docFileText.TextChanged += new System.EventHandler(this.docFileText_TextChanged);
			// 
			// docFileSelector
			// 
			this.docFileSelector.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.docFileSelector.FormattingEnabled = true;
			this.docFileSelector.Location = new System.Drawing.Point(6, 19);
			this.docFileSelector.Name = "docFileSelector";
			this.docFileSelector.Size = new System.Drawing.Size(230, 21);
			this.docFileSelector.TabIndex = 13;
			this.docFileSelector.SelectedIndexChanged += new System.EventHandler(this.docFileSelector_SelectedIndexChanged);
			// 
			// next
			// 
			this.next.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.next.Location = new System.Drawing.Point(632, 574);
			this.next.Name = "next";
			this.next.Size = new System.Drawing.Size(577, 23);
			this.next.TabIndex = 9;
			this.next.Text = "----->";
			this.next.UseVisualStyleBackColor = true;
			this.next.Click += new System.EventHandler(this.next_Click);
			// 
			// prev
			// 
			this.prev.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.prev.Location = new System.Drawing.Point(12, 574);
			this.prev.Name = "prev";
			this.prev.Size = new System.Drawing.Size(600, 23);
			this.prev.TabIndex = 10;
			this.prev.Text = "<-----";
			this.prev.UseVisualStyleBackColor = true;
			this.prev.Click += new System.EventHandler(this.prev_Click);
			// 
			// docFileHtml
			// 
			this.docFileHtml.AllowNavigation = false;
			this.docFileHtml.AllowWebBrowserDrop = false;
			this.docFileHtml.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.docFileHtml.IsWebBrowserContextMenuEnabled = false;
			this.docFileHtml.Location = new System.Drawing.Point(6, 3);
			this.docFileHtml.MinimumSize = new System.Drawing.Size(20, 20);
			this.docFileHtml.Name = "docFileHtml";
			this.docFileHtml.ScriptErrorsSuppressed = true;
			this.docFileHtml.ScrollBarsEnabled = false;
			this.docFileHtml.Size = new System.Drawing.Size(230, 277);
			this.docFileHtml.TabIndex = 0;
			// 
			// MainForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(1221, 609);
			this.Controls.Add(this.prev);
			this.Controls.Add(this.next);
			this.Controls.Add(this.splitContainer1);
			this.Name = "MainForm";
			this.Text = "ThreejsDocumentator";
			this.Load += new System.EventHandler(this.MainForm_Load);
			this.splitContainer1.Panel1.ResumeLayout(false);
			this.splitContainer1.Panel1.PerformLayout();
			this.splitContainer1.Panel2.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
			this.splitContainer1.ResumeLayout(false);
			this.splitContainer2.Panel1.ResumeLayout(false);
			this.splitContainer2.Panel1.PerformLayout();
			this.splitContainer2.Panel2.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.splitContainer2)).EndInit();
			this.splitContainer2.ResumeLayout(false);
			this.splitContainer3.Panel1.ResumeLayout(false);
			this.splitContainer3.Panel1.PerformLayout();
			this.splitContainer3.Panel2.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.splitContainer3)).EndInit();
			this.splitContainer3.ResumeLayout(false);
			this.splitContainer4.Panel1.ResumeLayout(false);
			this.splitContainer4.Panel1.PerformLayout();
			this.splitContainer4.Panel2.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.splitContainer4)).EndInit();
			this.splitContainer4.ResumeLayout(false);
			this.splitContainer5.Panel1.ResumeLayout(false);
			this.splitContainer5.Panel1.PerformLayout();
			this.splitContainer5.Panel2.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.splitContainer5)).EndInit();
			this.splitContainer5.ResumeLayout(false);
			this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox oldHaxeFileSelector;
        private System.Windows.Forms.RichTextBox oldHaxeFileText;
        private System.Windows.Forms.RichTextBox newHaxeFileText;
        private System.Windows.Forms.ComboBox newHaxeFileSelector;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.SplitContainer splitContainer2;
        private System.Windows.Forms.SplitContainer splitContainer3;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.RichTextBox typeScriptText;
        private System.Windows.Forms.ComboBox typeScriptSelector;
        private System.Windows.Forms.SplitContainer splitContainer4;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.RichTextBox javaScriptFileText;
        private System.Windows.Forms.ComboBox javaScriptFileSelector;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.RichTextBox docFileText;
		private System.Windows.Forms.ComboBox docFileSelector;
		private System.Windows.Forms.Button next;
		private System.Windows.Forms.Button prev;
		private System.Windows.Forms.SplitContainer splitContainer5;
		private System.Windows.Forms.WebBrowser docFileHtml;
    }
}

