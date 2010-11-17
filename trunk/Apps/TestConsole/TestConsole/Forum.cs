using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;
using System.Xml.Serialization;

namespace Discuz.TestConsole
{
    public class Forum
    {
        ///<summary>
        ///本论坛的上级论坛或分本论坛的上级论坛或分类的fid
        ///</summary>
        [JsonPropertyAttribute("parent_id")]
        public int ParentId;

        ///<summary>
        ///论坛名称
        ///</summary>
        [JsonPropertyAttribute("name")]
        public string Name;


        ///<summary>
        ///是否显示
        ///</summary>
        [JsonPropertyAttribute("status")]
        public int? Status;
        ///<summary>
        ///风格id,0为默认
        ///</summary>
        [JsonPropertyAttribute("template_id")]
        public int TemplateId;

        /// <summary>
        /// 用于搜索引擎优化,放在 meta 的 keyword 标签中,多个关键字间请用半角逗号","隔开
        /// </summary>
        [JsonPropertyAttribute("seo_keywords")]
        public string SeoKeywords;

        /// <summary>
        /// 用于搜索引擎优化,放在 meta 的 description 标签中,多个关键字间请用半角逗号","隔开
        /// </summary>
        [JsonPropertyAttribute("seo_description")]
        public string SeoDescription;

        /// <summary>
        /// 用于URL重写版块名称
        /// </summary>
        [JsonPropertyAttribute("rewrite_name")]
        public string RewriteName;

        ///<summary>
        ///论坛描述
        ///</summary>
        [JsonPropertyAttribute("description")]
        public string Description;

        ///<summary>
        ///论坛图标,显示于首页论坛列表等
        ///</summary>
        [JsonPropertyAttribute("icon")]
        public string Icon;

        ///<summary>
        ///版主列表(仅供显示使用,不记录实际权限)
        ///</summary>
        [JsonPropertyAttribute("moderators")]
        public string Moderators;
        ///<summary>
        ///本版规则
        ///</summary>
        [JsonPropertyAttribute("rules")]
        public string Rules;


        ///<summary>
        ///允许使用Smilies
        ///</summary>
        [JsonPropertyAttribute("allow_smilies")]
        public int AllowSmilies;

        ///<summary>
        ///允许使用Rss
        ///</summary>
        [JsonPropertyAttribute("allow_rss")]
        public int AllowRss;

        ///<summary>
        ///允许Discuz!NT代码
        ///</summary>
        [JsonPropertyAttribute("allow_bbcode")]
        public int AllowBbcode;
        ///<summary>
        ///允许[img]代码
        ///</summary>
        [JsonPropertyAttribute("allow_imgcode")]
        public int AllowImgcode;



        /////<summary>
        /////允许发表特殊主题
        /////</summary>  
        //[JsonPropertyAttribute("allow_post_special")]
        //public int AllowPostSpecial;
        /////<summary>
        /////仅允许发表特殊主题   
        /////</summary>
        //[JsonPropertyAttribute("allow_special_only")]
        //public int AllowSpecialOnly;



        ///<summary>
        ///允许版主编辑论坛规则
        ///</summary>
        [JsonPropertyAttribute("allow_edit_rules")]
        public int AllowEditRules;
        ///<summary>
        ///允许showforum页面输出缩略图
        ///</summary>
        [JsonPropertyAttribute("allow_thumbnail")]
        public int AllowThumbnail;
        /// <summary>
        /// 允许使用Tag
        /// </summary>
        [JsonPropertyAttribute("allow_tag")]
        public int AllowTag;
        ///<summary>
        ///打开回收站
        ///</summary>
        [JsonPropertyAttribute("recycle_bin")]
        public int RecycleBin;
        ///<summary>
        ///发帖需要审核
        ///</summary>
        [JsonPropertyAttribute("mod_new_posts")]
        public int ModNewPosts;
        ///<summary>
        ///帖子中添加干扰码,防止恶意复制
        ///</summary>
        [JsonPropertyAttribute("jammer")]
        public int Jammer;
        ///<summary>
        ///禁止附件自动水印
        ///</summary>
        [JsonPropertyAttribute("disable_watermark")]
        public int DisableWatermark;
        ///<summary>
        ///继承上级论坛或分类的版主设定
        ///</summary>
        [JsonPropertyAttribute("inherited_mod")]
        public int InheritedMod;
        ///<summary>
        ///定期自动关闭主题,单位为天
        ///</summary>
        [JsonPropertyAttribute("auto_close")]
        public int AutoClose;
    }
}
