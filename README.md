# Windows NT 5 (Windows XP / Windows Server 2003)
Windows NT is a proprietary graphical operating system produced by Microsoft and its first version was released on July 27, 1993. It is a processor-independent, multi-processor and multi-user operating system.

This edition of Windows NT 5 is a member of the Microsoft Windows NT family, beginning with Windows 2000 and ending with Windows Server 2003.

## Pre-Installation Preparations
- Extract source tree, in this guide we will assume `C:\NT`. 
- Remove the Read Only setting, including subfolders and files. 
- Create desktop shortcut for `%windir%\system32\cmd.exe /k C:\NT\tools\razzle.cmd free offline`
- Open razzle window using shortcut you created

## Building
- Performs clean rebuild of all components: `build /cZP`
- Builds only components that have changed since last clean build: `build /ZP`
- Mount RTM CD and execute `tools\missing.cmd` (optionally, perform this step for every SKU)
- Execute `tools\postbuild.cmd` (use `-sku:{sku}` if you want to process only specific one, expect `filechk` errors if you ignore this and have skipped on `missing.cmd` optional step)
- You can modify your razzle shortcut (or execute command manually inside `C:\NT`) to include (or remove) additional argument(s):
  - `free` - build 'free' bits (production, ommiting it will generated checked bits)
  - `CkhKernel` - build 'checked' (testing) kernel/hal/ntdll when building 'free' bits
  - `no_opts` - disable binary optimization (useful for debugging, but will most likely fail a full build, some code can't be built without optimization)
  - `verbose` - enable verbose execution of the build process
  - `binaries_dir <basepath>` - specifies custom output directory (default is `binaries`, the suffix added after `.` is non-customizable)
- Other options are not described here, see `razzle.cmd /?` for details.

## Generating ISO Files
- Execute `tools\oscdimg.cmd {sku} [destination-file (optional)]` where `{sku}` is one of: 
    - `srv` - Windows Server 2003 Standard Edition
    - `sbs` - Windows Server 2003 Small Business Edition
    - `ads` - Windows Server 2003 Enterprise Edition
    - `dtc` - Windows Server 2003 Datacenter Edition
    - `bla` - Windows Server 2003 Web Edition
    - `per` - Windows XP Home Edition
    - `pro` - Windows XP Professional
- ISO will be saved to `{build-drive}\{build-tag}_{sku}.iso`, unless `[destination-file]` is provided as a parameter.

## Generating New Build Name/Number (Optional)
- Version information is stored in `\public\sdk\inc\ntverp.h`
- You can also use `nmake set_builddate set_buildnum set_buildname -f makefil0` to generate new build name quickly.

## Timebomb (Optional)
- Can be enabled or disabled by commenting or uncommenting `timebomb.cmd` entry in `\tools\postbuildscripts\pbuild.dat`
- If enabled, time can be adjusted by editing `\tools\postbuildscripts\timebomb.cmd`
  - Time can be adjusted by editing `DAYS` variable inside `\tools\postbuildscripts\timebomb.cmd` (line 44)
  - Setting `DAYS` to `0` will disable the timebomb.
  - Only certain `DAYS` parameters are valid (0, 5, 15, 30, 60, 90, 120, 150, 180, 240, 360, 444)

## Product keys
- Standard Edition: `M6RJ9-TBJH3-9DDXM-4VX9Q-K8M8M`
- Enterprise Edition: `QW32K-48T2T-3D2PJ-DXBWY-C6WRJ`
- Enterprise x64: `KK2WD-BFYJ6-77X87-8TRBF-9B343`

## Disclaimer
I do not own this source code. The leaks are not from me. I uploaded the extracted source code to a new repository because I thought it would benefit developers.

## Issues, Feature Requests or Support
Please use the [New Issue](https://github.com/akinbicer/windows-nt5/issues/new) button to submit issues, feature requests or support issues directly to me. You can also send an e-mail to akin.bicer@outlook.com.tr.
