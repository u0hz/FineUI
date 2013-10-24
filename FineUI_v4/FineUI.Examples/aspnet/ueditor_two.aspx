﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ueditor_two.aspx.cs" ValidateRequest="false"
    Inherits="FineUI.Examples.aspnet.ueditor_two" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../ueditor/themes/default/ueditor.css" />
    <style>
        table.mytable {
            width: 100%;
            border-collapse: collapse;
        }

            table.mytable td {
                padding: 0;
                vertical-align: top;
            }

                table.mytable td.first {
                    width: 85px;
                }

                table.mytable td.second {
                    padding-right: 5px;
                }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <x:PageManager ID="PageManager1" runat="server" />
        <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" LabelWidth="80px" Width="900px" EnableFrame="true" EnableCollapse="true"
            Title="添加文章" runat="server">
            <Items>
                <x:TextBox ID="tbxTitle" Label="文章标题" Required="true" runat="server">
                </x:TextBox>
                <x:ContentPanel ID="ContentPanel1" runat="server" ShowBorder="false" ShowHeader="false">
                    <table class="mytable">
                        <tr>
                            <td class="first">文章正文： </td>
                            <td class="second">
                                <textarea name="UEditor1" id="UEditor1">
                                &lt;p&gt;关于FineUI&lt;br /&gt;基于 ExtJS 的专业 ASP.NET 2.0 控件库。&lt;br /&gt;&lt;br /&gt;FineUI的使命&lt;br /&gt;创建 No JavaScript，No CSS，No UpdatePanel，No ViewState，No WebServices 的网站应用程序。&lt;br /&gt;&lt;br /&gt;支持的浏览器&lt;br /&gt;IE 7.0+、Firefox 3.6+、Chrome 3.0+、Opera 10.5+、Safari 3.0+&lt;br /&gt;&lt;br /&gt;授权协议&lt;br /&gt;Apache License 2.0 (Apache)&lt;br /&gt;&lt;br /&gt;相关链接&lt;br /&gt;论坛：http://fineui.com/bbs/&lt;br /&gt;示例：http://fineui.com/demo/&lt;br /&gt;文档：http://fineui.com/doc/&lt;br /&gt;下载：http://fineui.codeplex.com/&lt;/p&gt;
                                </textarea>
                            </td>
                        </tr>
                        <tr>
                            <td class="first" style="padding-top: 5px;">文章摘要：</td>
                            <td class="second" style="padding-top: 5px;">
                                <textarea name="UEditor2" id="UEditor2">
                                </textarea>
                            </td>
                        </tr>
                    </table>
                </x:ContentPanel>

            </Items>
            <Toolbars>
                <x:Toolbar runat="server" Position="Footer">
                    <Items>
                        <x:Button ID="Button1" runat="server" ValidateForms="SimpleForm1"
                            Text="获取文章内容" OnClick="Button1_Click">
                        </x:Button>
                        <x:Button ID="Button2" runat="server" Text="更新文章摘要" OnClick="Button2_Click">
                        </x:Button>
                    </Items>
                </x:Toolbar>
            </Toolbars>
        </x:SimpleForm>
        <x:Label runat="server" ID="labResult" EncodeText="false">
        </x:Label>
        <br />
    </form>
    <script type="text/javascript">
        window.UEDITOR_HOME_URL = '<%= ResolveUrl("~/ueditor/") %>';
    </script>
    <script src="../jqueryui/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="../ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript">
        var editor1, editor2;
        var formClientID = '<%= SimpleForm1.ClientID %>';

        function onReady() {
            editor1 = new UE.ui.Editor({
                initialFrameWidth: '100%',
                initialFrameHeight: 100
            });
            editor1.render("UEditor1");

            editor2 = new UE.ui.Editor({
                initialFrameWidth: '100%',
                initialFrameHeight: 80,
                initialContent: '',
                toolbars: [['fullscreen', 'source', '|', 'undo', 'redo', '|',
                'bold', 'italic', 'underline', 'strikethrough', 'superscript', 'subscript',
                'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain']]
            });
            editor2.render("UEditor2");



            $.when(editor1Ready(), editor2Ready()).then(function () {
                window.setTimeout(function () { updateLayout(); }, 100);

            });


        }

        function editor1Ready() {
            var dfd = $.Deferred();

            editor1.addListener('ready', function (editor) {
                dfd.resolve();
            });

            return dfd.promise();
        }

        function editor2Ready() {
            var dfd = $.Deferred();

            editor2.addListener('ready', function (editor) {
                dfd.resolve();
            });

            return dfd.promise();
        }

        // 提交数据之前同步到表单隐藏字段
        X.util.beforeAjaxPostBackScript = function () {
            editor1.sync();
            editor2.sync();
        };

        // 更新外部容器的布局
        function updateLayout() {
            X(formClientID).updateLayout();
        }

        // 更新编辑器内容
        function updateUEditor1(content) {
            window.setTimeout(function () {
                editor1.setContent(content);
            }, 100);
        }

        function updateUEditor2(content) {
            window.setTimeout(function () {
                editor2.setContent(content);
            }, 100);
        }
    </script>
</body>
</html>
