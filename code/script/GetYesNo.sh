
#
# File: GetYesNo.sh
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

GetYesNo() {
     #
     # ̾��
     #    GetYesNo - �����Ф�������Ф��� Yes �� No �α������������
     #
     # ��
     #    GetYesNo "message"
     #
     # ����
     #    �����å���������Ϥ���������Ф��Ƥα����Ȥ���
     #    Yes �� No ���׵᤹��ؿ���
     #    Yes ��������줿�鿿�ʣ��ˤ��֤���
     #    No �Ǥ���е��ʣ��ˤ��֤�
     #    Yes �Ǥ� No �Ǥ�ʤ����ˤϤɤä��������Ϥ���褦
     #    ���׵᤹�롣ɬ���ɤ��餫�����Ϥ򤷤ʤ��Ƚ�λ���ʤ���
     #
     _ANSWER=            # �桼�������Ϥ��������������ѿ�

     if [ $# -eq 0 ]; then
          echo "Usage: GetYesNo message" 1>&2
          exit 1
     fi

     while :
     do
          if [ "`echo -n`" = "-n" ]; then
               echo "$@\c"
          else
               echo -n "$@"
          fi
          read _ANSWER
          case "$_ANSWER" in
               [yY] | yes | YES | Yes ) return 0       ;;
               [nN] | no  | NO  | No  ) return 1       ;;
               * ) echo "Please enter y or n."         ;;
          esac
     done
}
