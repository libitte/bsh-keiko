
#
# File: Question.sh
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

Question() {
     #
     # ̾��
     #    Question - �������׵᤹��
     #
     # ��
     #    Question question default helpmessage
     #
     # ����
     #    ���ꤷ����å�������ɸ����Ϥ˽񤭽Ф���
     #    �桼���˱������׵᤹��ؿ���
     #    �桼�������Ϥ���������̤� ANSWER �Ȥ����ѿ����������롣
     #
     #    �桼���ϴ���Ū�ˤɤ�����ʸ��������Ϥ��Ƥ�褤
     #    �ʰ�����桼�������Ϥ� yes �� no ���ξ��Ϲ�θ���Ƥ���ˡ�
     #    ���Ϥ��줿ʸ������Ф��Ƥν����μ¹Ԥ�
     #    �ѿ� ANSWER ���ͤ�Ƚ�Ǥ��Ƴƥ����륹����ץȤǹԤʤ���
     #    
     #    ���Ϲ��ܤ˥ǥե�����ͤ������ǽ��
     #    �����ͤ����ꤷ�Ƥ����ȡ��䤤��碌��å������Τ��Ȥ�
     #    [ ]�ǳ�äƤ������Ϥ��롣
     #    �桼���϶����󥿤Ǥ��Υǥե�����ͤ����Ϥ������Ȥˤʤ롣
     #
     #    �إ�ץ�å�����������ǽ��
     #    �桼�����������ϻ��� ? �ȥ����פ���С�
     #    �����䤦�Ƥ���Τ������������Фɤ����������򤹤�Τ��Ȥ���
     #    ��å�������ɽ���Ǥ��롣
     #    �إ�ץ�å��������ϸ塢���ٱ����׵��å���������Ϥ��롣
     #
     #    �ǥե���Ȥα����ȥإ�ץ�å������ϡ����ꤷ�ʤ����ˤ�
     #    "" �Ȥ�������ʸ���������˻��ꤷ�ʤ��ƤϤʤ�ʤ���
     #
     #    �桼���ϱ������ϻ��� q �ȥ����פ��뤳�Ȥ�
     #    �����륹����ץȤ�λ���뤳�Ȥ���ǽ��
     #
     #    �������ϻ��ˡ�! ���դ������̤Υ��ޥ�ɤ�¹Բ�ǽ��
     #    ���ޥ�ɤ�¹Ԥ���̤��ǧ���Ƥ������ϤǤ���褦�ˤ�����Ρ�
     #    ���ޥ�ɤμ¹Ը塢���ٱ����׵��å���������Ϥ��롣
     #
     #    �ǥХå��⡼�ɤ��Ѱդ��Ƥ��롣
     #    �������ϻ��� -x��+x �ǥǥХå��⡼�ɤΥ��󥪥դ��ڤ��ؤ��롣
     #
     if [ $# -lt 3 ]; then
          echo "Usage: Question question" \
               "default helpmessage" 1>&2
          exit 1
     fi
     ANSWER=             # �桼�������ϥǡ��������������ѿ�
     _DEFAULT=$2         # �ǥե���Ȥ��ͤ򥻥å�
     _QUESTION=          # �����׵��å����������������ѿ�
     _HELPMSG=$3         # �إ�ץ�å����������������ѿ�

     if [ "$_DEFAULT" = "" ]; then
          _QUESTION="$1? "
     else
          _QUESTION="$1 [$_DEFAULT]? "
     fi

     while :
     do
          if [ "`echo -n`" = "-n" ]; then
               echo "$_QUESTION\c"
          else
               echo -n "$_QUESTION"
          fi
          read ANSWER
          case `echo "$ANSWER" | tr [A-Z] [a-z]` in
               "" ) if [ "$_DEFAULT" != "" ]; then
                         ANSWER=$_DEFAULT
                         break
                    fi
                    ;;

          yes | y ) ANSWER=yes
                    break
                    ;;

           no | n ) ANSWER=no
                    break
                    ;;

         quit | q ) exit 1
                    ;;

          +x | -x ) set $ANSWER
                    ;;

               !* ) eval `expr "$ANSWER" : "!\(.*\)"`
                    ;;

              "?" ) echo ""
                    if [ "$_HELPMSG" = "" ]; then
                         echo "No help available."
                    else
                         echo "$_HELPMSG"
                    fi
                    echo ""
                    ;;

               * )  break
                    ;;
          esac
     done
}
