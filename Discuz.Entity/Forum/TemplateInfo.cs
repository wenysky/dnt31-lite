using System;

namespace Discuz.Entity
{
	/// <summary>
	/// TemplateInfo ��ժҪ˵����
	/// </summary>
    [Serializable]
	public class TemplateInfo
	{
		private int m_templateid;	//ģ��id
		private string m_name;	//ģ������
		private string m_directory;	//ģ������Ŀ¼
		private string m_copyright;	//ģ���Ȩ����

		///<summary>
		///ģ��id
		///</summary>
		public int Templateid
		{
			get { return m_templateid;}
			set { m_templateid = value;}
		}
		///<summary>
		///ģ������
		///</summary>
		public string Name
		{
			get { return m_name;}
			set { m_name = value;}
		}
		///<summary>
		///ģ������Ŀ¼
		///</summary>
		public string Directory
		{
			get { return m_directory;}
			set { m_directory = value;}
		}
		///<summary>
		///ģ���Ȩ����
		///</summary>
		public string Copyright
		{
			get { return m_copyright;}
			set { m_copyright = value;}
		}
	}
}
