
#
# �ե�����̾��: Clear.sh
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

Clear() {
     #
     # ̾��
     #    Clear - ü�����̤򥯥ꥢ����
     #
     # ��
     #    Clear
     #
     # ����
     #    clear ���ޥ�ɤ� tput ���ޥ�ɤ�Ȥä�ü�����̤�
     #    ���ꥢ����ؿ����⤷�ɤ���Υ��ޥ�ɤ�Ȥ��ʤ�
     #    �ϣӤξ�硢40 �Ԥζ���Ԥ���Ϥ��롣
     #
     { clear;       } 2>/dev/null  ||
     { tput clear;  } 2>/dev/null  ||
     for i in 1 2 3 4 5 6 7 8 9 10 \
              1 2 3 4 5 6 7 8 9 20 \
              1 2 3 4 5 6 7 8 9 30 \
              1 2 3 4 5 6 7 8 9 40
     do
          echo
     done
}
