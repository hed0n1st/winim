#====================================================================
#
#          Winim - Windows API, COM, and CLR Module for Nim
#               Copyright (c) Chen Kai-Hung, Ward
#
#====================================================================

# Package

version       = "3.9.2"
author        = "Ward"
description   = "Winim - Windows API, COM, and CLR Module for Nim"
license       = "MIT"
skipDirs      = @["examples", "tests", "docs", "tcclib"]

# Dependencies

requires "nim >= 1.0.0"

# Tests

task test, "Runs the test suite":
  exec "nim c -r tests/variant_test"
  exec "nim c -r tests/winstr_test"
  exec "nim c -r tests/com_test"
  exec "nim c -r tests/clr_test"

# Examples

task example, "Build all the examples":
  exec "nim c examples/fileopendialog"
  exec "nim c examples/getopenfilename"
  exec "nim c examples/hellomsg"
  exec "nim c examples/hellowin"
  exec "nim c examples/linedemo"
  exec "nim c examples/scrnsize"
  exec "nim c examples/shortcut"
  exec "nim c examples/uiautomation"

# COM Examples

task comexample, "Build all the COM examples":
  exec "nim c examples/com/binary"
  exec "nim c examples/com/constants"
  exec "nim c examples/com/diskinfo"
  exec "nim c examples/com/Excel_Application1"
  exec "nim c examples/com/Excel_Application2"
  exec "nim c examples/com/InternetExplorer_Application"
  exec "nim c examples/com/MSXML_DOMDocument"
  exec "nim c examples/com/SAPI_SpVoice"
  exec "nim c examples/com/Scriptlet_TypeLib"
  exec "nim c examples/com/Shell_Application"
  exec "nim c examples/com/VBScript_RegExp"
  exec "nim c examples/com/WinHttp_WinHttpRequest"
  exec "nim c examples/com/winmgmts"
  exec "nim c examples/com/WScript"
  exec "nim c examples/com/nimDispatch/client"
  exec "nim c examples/com/nimDispatch/server"
  exec "nim c examples/com/threads/thread1"
  exec "nim c examples/com/threads/thread2"
  exec "nim c examples/com/threads/thread3"
  exec "nim c examples/com/threads/thread4"

# CLR Examples

task clrexample, "Build all the CLR examples":
  exec "nim c examples/clr/code_compiler.nim"
  exec "nim c examples/clr/misc_examples.nim"
  exec "nim c examples/clr/simple_gui.nim"
  exec "nim c examples/clr/splitter.nim"
  exec "nim c examples/clr/usage_demo1.nim"
  exec "nim c examples/clr/usage_demo2.nim"
  exec "nim c examples/clr/wpf.nim"

# Sweep

task sweep, "Delete all the executable files":
  exec "cmd /c IF EXIST tests\\*.exe del tests\\*.exe"
  exec "cmd /c IF EXIST examples\\*.exe del examples\\*.exe"
  exec "cmd /c IF EXIST examples\\com\\*.exe del examples\\com\\*.exe"
  exec "cmd /c IF EXIST examples\\com\\nimDispatch\\*.exe del examples\\com\\nimDispatch\\*.exe"
  exec "cmd /c IF EXIST examples\\com\\threads\\*.exe del examples\\com\\threads\\*.exe"
  exec "cmd /c IF EXIST examples\\clr\\*.exe del examples\\clr\\*.exe"
  exec "cmd /c IF EXIST examples\\clr\\*.dll del examples\\clr\\*.dll"
  exec "cmd /c IF EXIST winim\\*.exe del winim\\*.exe"
