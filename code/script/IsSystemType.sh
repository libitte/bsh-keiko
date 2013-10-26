
#
# File: IsSystemType.sh
#
# Copyright 1995, by Hewlett-Packard Company
#
# The code in this file is from the book "Shell Programming
# Examples" by Bruce Blinn, published by Prentice Hall.
# This file may be copied free of charge for personal,
# non-commercial use provided that this notice appears in
# all copies of the file.  There is no warranty, either
# expressed or implied, supplied with this code.
#
# ���Υե�����Υ����ɤ�Bruce Blinn����Prentice Hall���Ԥ�
# ��Shell Programming Examples�פ˷Ǻܤ���Ƥ�����ΤǤ���
# ���Υե�����ϡ��ĿͤȤ��Ʊ�������Ū�Ȥ������Ѥ���¤ꡢ
# ̵����ʣ�����Ƥ��ޤ��ޤ��󡣤��ξ�硢ʣ���Τ��٤Ƥ�
# ��������ʸ���ޤޤ�Ƥ���ɬ�פ�����ޤ������Υ����ɤ�
# �ؤ��Ƥϡ�����Ū�ˤ����Ū�ˤ⤤���ʤ��ݾڤ�Ԥ��ޤ���
#

IsSystemType() {
     #
     # ̾��
     #    IsSystemType - �����ƥ�Υ����פ����������ɤ�����Ƚ�ꤹ��
     #
     # ��
     #    IsSystemType string
     #
     # ����
     #    ���ꤷ��ʸ���󤬺�ư��Ƥ��륷���ƥ��ɽ�魯��Τ��ɤ���
     #    ��Ĵ�٤�ؿ���uname ���ޥ�ɤ�Ȥäƥ����å�����
     #    ��äƤ���п��ʣ��ˤ��֤���äƤ��ʤ���е��ʣ��ˤ��֤���
     #
     if [ $# -ne 1 ]; then
          echo "Usage: IsSystemType string" 1>&2
          exit 1
     fi

     if [ "$1" = "`uname -s`" ]; then
          return 0
     elif [ "$1" = "`uname -m`" ]; then
          return 0
     else
          case `uname -r` in
               "$1"* ) return 0 ;;
          esac
     fi
     return 1
}
