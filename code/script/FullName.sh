
#
# File: FullName.sh
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

FullName() {
     #
     # ̾��
     #    FullName - �ե������ǥ��쥯�ȥ�δ����ѥ�̾���֤�
     #
     # ��
     #    FullName filename | directory
     #
     # ����
     #    ���ꤵ�줿�ե������ǥ��쥯�ȥ�����ѥ�̾��
     #    ��ɽ��������Τ��֤��ؿ��� 
     #    �����ѥ�̾�Ȥ� / �ǻϤޤ�ե������ǥ��쥯�ȥ��̾��ɽ���Τ��ȡ�
     #    ��̤�ɸ����Ϥ�ɽ�����롣
     #    ���ꤷ���ե������ǥ��쥯�ȥ꤬¸�ߤ��ʤ��ä��顢
     #    ���Τޤ޲��⤻���ˤ�Ȥ�̾����ɽ�����롣
     #    
     _CWD=`pwd`          # ���ߤκ�ȥǥ��쥯�ȥ��Ф�������

     if [ $# -ne 1 ]; then
          echo "Usage: FullName filename | directory" 1>&2
          exit 1
     fi

     if [ -d $1 ]; then
          cd $1
          echo `pwd`
     elif [ -f $1 ]; then
          cd `dirname $1`
          echo `pwd`/`basename $1`
     else
          echo $1
     fi

     cd $_CWD            # ��Ȥκ�ȥǥ��쥯�ȥ�����
}
