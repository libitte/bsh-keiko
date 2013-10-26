
#
# File: IsNewer.sh
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

IsNewer() {
     #
     # ̾��
     #    IsNewer - ��ĤΥե���������դ���٤�
     #
     # ��
     #    IsNewer file1 file2
     #
     # ����
     #    file2 �����դ��� file1 �����դ������������ʺǶ�Τ�Ρ�
     #    �ʤ�п��ʣ��ˤ��֤��������Ǥʤ���е��ʣ��ˤ��֤��ؿ���
     #    ���դȤ����ΤϤ��Υե�����κǽ���������򤤤���
     #    
     if [ $# -ne 2 ]; then
          echo "Usage: IsNewer file1 file2" 1>&2
          exit 1
     fi

     if [ ! -f $1 -o ! -f $2 ]; then
          return 1       # ���ꤵ�줿��Τ��ե����뤸��ʤ��ä����
     fi

     if [ -n "`find $1 -newer $2 -print`" ]; then
          return 0       # ������
     else
          return 1       # �������ʤ�
     fi
}
