;//
;// Screen Saver Messages
;//
;// Format:
;//
;// MessageId=<optional numeric ID> SymbolicName=<constant>
;// Language=<language>
;// Text
;// .
;//
;// %0 is a terminator; without it, the message has a cr/lf appended to it.
;//
;// Our convention:
;//     %1 is arg 1, the user name, screen saver name or file name (depends on message)
;//     %2 is arg 2, usually the error code (a UINT)
;//     %3 is arg 3, used for registry key in MSG_REGISTRY_ERROR
;//     %4 is arg 4, used for registry value name in MSG_REGISTRY_ERROR
;//
;// See FormatMessage API help for more info.
;//
;//

LanguageNames=(English=0x409:MSG00409:1252)
LanguageNames=(Japanese=0x411:MSG00411:932)
LanguageNames=(CHS=0x804:MSG00804:936)
LanguageNames=(Korean=0x412:MSG00412:949)
LanguageNames=(CHT=0x404:MSG00404:950)

MessageId=100 SymbolicName=MSG_FILENAMES
Language=English
Blank Screen.scr|Curves and Colors.scr|Flying Through Space.scr|Scrolling Marquee.scr|Mystify Your Mind.scr|%0
.
Language=Japanese
模様なし.scr|リボン.scr|宇宙飛行.scr|伝言板表示.scr|ライン アート.scr|%0
.
Language=Korean
기본 화면 보호기.scr|3차원 곡선.scr|우주 공간.scr|사용자 입력 문구 표시.scr|춤추는 다각형.scr|%0
.
Language=CHS
Blank Screen.scr|贝塞尔曲线.scr|飞越星空.scr|字幕显示.scr|变幻线.scr|%0
.
Language=CHT
Blank Screen.scr|多環圈.scr|星際模擬.scr|留言顯示.scr|旋轉多邊形.scr|%0
.

MessageId= SymbolicName=MSG_HUGEDATA_ERROR
Language=English
An invalid screen saver was detected and skipped.
.
Language=Japanese
無効なスクリーン セーバーが検出されたのでスキップしました。
%0
.
Language=Korean
올바르지 않은 화면 보호기가 탐지되어 건너뜁니다.
%0
.
Language=CHS
检测出一个不正确的屏幕保护程序，并且已略过不处理它。
%0
.
Language=CHT
偵測到不正確的螢幕保護裝置，而且已略過這個裝置。
%0
.
                            
MessageId= SymbolicName=MSG_DEFAULT_USER
Language=English
Default User%0
.
Language=Japanese
規定のユーザー%0
.
Language=Korean
기본 사용자%0
.
Language=CHS
默认用户%0
.
Language=CHT
預設的使用者%0
.

MessageId= SymbolicName=MSG_PRODUCT_ID
Language=English
Windows 95 Screen Savers%0
.
Language=Japanese
Windows 95 スクリーン セーバー%0
.
Language=Korean
Windows 95 화면 보호기%0
.
Language=CHS
Windows 95 屏幕保护程序%0
.
Language=CHT
Windows 95 螢幕保護裝置%0
.

MessageId= SymbolicName=MSG_PASSWORD_ALERT
Language=English
The current screen saver password may be different from the password expected by Windows NT.  On Windows NT, use your logon password when a screen saver prompts for a password.%0
.
Language=Japanese
現在のスクリーン セーバーのパスワードは Windows NT が期待しているものとは異なる可能性があります。Windows NT では、スクリーン セーバーでパスワードを表示するように指示されたときは、ユーザーのログオンに使うパスワードを使用してください。%0
.
Language=Korean
현재의 화면 보호기 암호가 Windows NT가 예상한 것과 다릅니다. Windows NT에서 화면 보호기가 암호를 물어보면 사용자의 로그온 암호를 사용하십시오.%0
.
Language=CHS
当前屏幕保护程序的密码可能与 Windows NT 所期望的不同。在 Windows NT 上，当屏幕保护程序提示要求输入密码时，请使用您的登录密码。%0
.
Language=CHT
目前的螢幕保護密碼和 Windows NT 密碼不同。當 Windows NT 上的螢幕保護裝置要求您輸入密碼時，請輸入您的登入密碼。%0
.

MessageId= SymbolicName=MSG_PROCESSING_ERROR
Language=English
An error occurred processing screen saver settings for user %1.  The screen saver will be disabled for this user.  (Error: %2!u!)
.
Language=Japanese
ユーザー %1 のスクリーン セーバーの設定を処理しているときにエラーが発生しました。このユーザーではスクリーン セーバーは使用不能になります。(エラー: %2!u!)
%0
.
Language=Korean
%1 사용자에 대한 화면 보호기 설정을 처리하는데 오류가 발생했습니다. 이 사용자는 화면 보호기를 사용할 수 없을 것입니다. (오류: %2!u!)
%0
.
Language=CHS
当处理用户 %1 的屏幕保护程序设置时发生错误。这个用户将被禁止使用该屏幕保护程序。 (错误：%2!u!)
%0
.
Language=CHT
在處理使用者 %1 的螢幕保護裝置設定時發生錯誤。這個使用者的螢幕保護裝置已停用。  (錯誤: %2!u!)
%0
.

MessageId= SymbolicName=MSG_DELETEFILE_SUCCESS
Language=English
Deleted Windows 95 screen saver %1%0
.
Language=Japanese
Windows 95 スクリーン セーバー %1 を削除しました%0
.
Language=Korean
Windows 95 화면 보호기 %1을(를) 삭제했습니다.%0
.
Language=CHS
已删除 Windows 95 屏幕保护程序 %1%0
.
Language=CHT
已刪除 Windows 95 螢幕保護裝置 %1%0
.

MessageId= SymbolicName=MSG_DELETEFILE_ERROR
Language=English
An error occurred attempting to delete the Windows 95 screen saver %1.  (Error: %2!u!)
.
Language=Japanese
Windows 95 スクリーン セーバー %1 を削除しようとしてエラーが発生しました。(エラー: %2!u!)
%0
.
Language=Korean
Windows 95 화면 보호기 %1을(를) 삭제하려고 시도하는데 오류가 발생했습니다. (오류: %2!u!)
%0
.
Language=CHS
当试图删除 Windows 95 屏幕保护程序 %1 时发生错误。 (错误：%2!u!)
%0
.
Language=CHT
嘗試刪除 Windows 95 螢幕保護裝置 %1 時發生錯誤。  (錯誤: %2!u!)
%0
.

MessageId= SymbolicName=MSG_BEZIER_DATA_ERROR
Language=English
Some of the Bezier screen saver settings are invalid and cannot be transfered to Windows NT.
%0
.
Language=Japanese
ベジエ スクリーン セーバーの設定のいくつかは、無効で Windows NT に転送できません。
%0
.
Language=Korean
3차원 곡선 화면 보호기 설정의 일부가 올바르지 않아서 Windows NT로 이전할 수 없습니다.
%0
.
Language=CHS
「贝塞尔曲线」屏幕保护程序的某些设置不正确，因此无法转移到 Windows NT 中。
%0
.
Language=CHT
「多環圈」螢幕保護裝置的有些設定不正確，無法轉移到 Windows NT。
%0
.

MessageId= SymbolicName=MSG_REGISTRY_ERROR
Language=English
An error occurred saving the screen saver settings for user %1.  (Error: %2!u!, %3 [%4])
.
Language=Japanese
ユーザー %1 のスクリーン セーバーの設定を保存するときにエラーが発生しました。(エラー: %2!u!, %3 [%4])
%0
.
Language=Korean
%1 사용자에 대한 화면 보호기 설정을 저장하는데 오류가 발생했습니다. (오류: %2!u!, %3 [%4])
%0
.
Language=CHS
当保存用户 %1 的屏幕保护程序设置时发生错误。 (错误：%2!u!, %3 [%4])
%0
.
Language=CHT
在儲存使用者 %1 的螢幕保護裝置設定時發生錯誤。  (錯誤: %2!u!, %3 [%4])
%0
.
 


