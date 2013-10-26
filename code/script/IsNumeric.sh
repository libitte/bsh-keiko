
#
# File: IsNumeric.sh
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

IsNumeric() {
     #
     # ̾��
     #    IsNumeric - ʸ���󤬿��ͤ��ɤ�����Ƚ�ꤹ��
     #
     # ��
     #    IsNumeric string
     #
     # ����
     #    ���ꤷ��ʸ���󤬤��٤ƿ��ͤ���ʤ��ΤǤ���п��ʣ��ˤ��֤���
     #    �������Ͱʳ���ʸ�����ޤޤ�Ƥ������ˤϵ��ʣ��ˤ��֤���
     #    
     if [ $# -ne 1 ]; then
          return 1
     fi

     expr "$1" + 1 >/dev/null 2>&1
     if [ $? -ge 2 ]; then
          return 1
     fi

     return 0
}
