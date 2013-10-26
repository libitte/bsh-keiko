
#
# File: StrCmp.sh
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

StrCmp() {
     #
     # ̾��
     #    StrCmp - ��Ĥ�ʸ�������Ӥ���
     #
     # ��
     #    StrCmp string1 string2
     #
     # ����
     #    ��Ĥ�ʸ�������Ӥ������Ĥη�̤��֤��ؿ���
     #    ���Ԥȸ�Ԥ���������� 0��
     #    ���Ԥ�������Ԥ�꾮������� -1��
     #    ���Ԥ�������Ԥ���礭����� 1 ���֤��ʽ��Ϥ���ˡ�
     #    
     #    ��Ӥϼ���Ū�˹Ԥʤ������� �� ��ʸ�� �� ��ʸ�� �����ܤ���
     #    12 �� 2 �Ǥ� 12 ���������������Ȥˤʤ롣
     #
     #    ��̤�ɸ����Ϥ˽񤭽Ф�����λ�����ɤ˥��åȤ����ΤǤϤʤ���
     #
     if [ $# -ne 2 ]; then
          echo "Usage: StrCmp string1 string2" 1>&2
          exit 1
     fi
     
     if [ "$1" = "$2" ]; then
          echo "0"
     else
          _TMP=`{ echo "$1"; echo "$2"; } | sort | sed -n '1p'`

          if [ "$_TMP" = "$1" ]; then
               echo "-1"
          else
               echo "1"
          fi
     fi
}
