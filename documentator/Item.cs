using System;
using System.IO;

namespace ThreejsDocumentator
{
	class Item
	{
		public String path;
		public Item(String path) { this.path = path; }
		override public String ToString() { return Path.GetFileNameWithoutExtension(path); }
	}
}
