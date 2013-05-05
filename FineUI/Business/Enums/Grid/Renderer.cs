﻿using System;
using System.Collections.Generic;
using System.Text;

namespace FineUI
{
    /// <summary>
    /// 表格可编辑字段渲染器
    /// </summary>
    public enum Renderer
    {
        /// <summary>
        /// 无（默认值）
        /// </summary>
        None,
        /// <summary>
        /// 首字母大写
        /// </summary>
        Capitalize,
        /// <summary>
        /// 日期（RendererArgument来指定日期格式化字符串）
        /// </summary>
        Date,
        /// <summary>
        /// 截断字符串并添加省略号（RendererArgument来指定最大长度）
        /// </summary>
        Ellipsis,
        /// <summary>
        /// 文件大小
        /// </summary>
        FileSize,
        /// <summary>
        /// HTML编码
        /// </summary>
        HtmlEncode,
        /// <summary>
        /// HTML解码
        /// </summary>
        HtmlDecode,
        /// <summary>
        /// 转化为小写字符
        /// </summary>
        Lowercase,
        /// <summary>
        /// 转化为大写字符
        /// </summary>
        Uppercase,
        /// <summary>
        /// 换行符转换为HTML标签<br/>
        /// </summary>
        NL2BR,
        /// <summary>
        /// 格式化为数字（RendererArgument来指定数字的显示格式）
        /// RendererArgument：
        /// 0 - (123456) 只显示数字，没有精度
        /// 0.00 - (123456.78) 只显示数字，两位精度<br>
        /// 0.0000 - (123456.7890) 只显示数字，四位精度<br>
        /// 0,000 - (123,456) 显示数字和逗号，没有精度<br>
        /// 0,000.00 - (123,456.78) 显示数字和逗号，两位精度<br>
        /// </summary>
        Number,
        /// <summary>
        /// 删除所有的脚本标签
        /// </summary>
        StripScripts,
        /// <summary>
        /// 删除所有的标签
        /// </summary>
        StripTags,
        /// <summary>
        /// 清除字符串两端的空白字符
        /// </summary>
        Trim,
        /// <summary>
        /// 美元
        /// </summary>
        UsMoney
    }

    /// <summary>
    /// 表格可编辑字段渲染器名称
    /// </summary>
    internal static class RendererName
    {
        public static string GetName(Renderer type)
        {
            string result = String.Empty;

            switch (type)
            {
                case Renderer.None:
                    result = "";
                    break;
                case Renderer.Capitalize:
                    result = "capitalize";
                    break;
                case Renderer.Date:
                    result = "date";
                    break;
                case Renderer.Ellipsis:
                    result = "ellipsis";
                    break;
                case Renderer.FileSize:
                    result = "fileSize";
                    break;
                case Renderer.HtmlDecode:
                    result = "htmlDecode";
                    break;
                case Renderer.HtmlEncode:
                    result = "htmlEncode";
                    break;
                case Renderer.Lowercase:
                    result = "lowercase";
                    break;
                case Renderer.NL2BR:
                    result = "nl2br";
                    break;
                case Renderer.Number:
                    result = "number";
                    break;
                case Renderer.StripScripts:
                    result = "stripScripts";
                    break;
                case Renderer.StripTags:
                    result = "stripTags";
                    break;
                case Renderer.Trim:
                    result = "trim";
                    break;
                case Renderer.Uppercase:
                    result = "uppercase";
                    break;
                case Renderer.UsMoney:
                    result = "usMoney";
                    break;
            }

            return result;
        }
    }
}