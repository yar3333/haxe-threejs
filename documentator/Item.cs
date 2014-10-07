using System;
using System.IO;

namespace ThreejsDocumentator
{
	class Item : IComparable
	{
		public String path;
		public Item(String path) { this.path = path; }
		override public String ToString() { return Path.GetFileNameWithoutExtension(path); }

		public int CompareTo(object obj)
		{
			var a = this.ToString();
			var b = ((Item)obj).ToString();
			return a.CompareTo(b);
		}
	}
}
