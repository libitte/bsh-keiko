
#
# File: DownShift.sh
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

DownShift() {
     #
     # ̾��
     #    DownShift - ʸ������Υ���ե��٥å���ʸ����ʸ�����Ѵ�����
     #
     # ��
     #    DownShift string
     #
     # ����
     #    ���ꤵ�줿ʸ������˴ޤޤ�륢��ե��٥åȤ�
     #    ��ʸ����ʸ�����Ѵ�����ؿ���
     #    ����ե��٥åȤǤʤ���Τˤϲ��⤷�ʤ���
     #    �Ѵ���η�̤�ɸ����Ϥ˽񤭽Ф���
     #    

     echo "$@" | tr '[A-Z]' '[a-z]'
}
