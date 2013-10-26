
#
# File: SystemType.sh
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

SystemType() {
     #
     # ̾��
     #    SystemType - ���Υ����ƥ��Ƚ�Ǥ���̾�Τ���Ϥ���
     #
     # ��
     #    SystemType
     #
     # ����
     #    ���δؿ��ϥ����ƥ�Υ����פ�Ƚ�̤����ʲ���
     #    �����줫��ʸ������֤���
     #    
     #         FREEBSD   LINUX     AIX       DECOSF    HP
     #         SCO       SGI       SOLARIS   SUNBSD    ULTRIX
     #
     #    ULTRIX �� DEC �θŤ������פ� BSD �ϤΥ����ƥ�Ǥ��ꡢ
     #    DECOSF �� OSF ��١����ˤ��� DEC �Υ����ƥࡣ
     #
     #    SUNBSD �� SUN �� BSD �ϤΤ�ΡʥС������ 4.xx�ˤǤ��ꡢ
     #    SOLARIS �� SUN �� System V �ϡʥС������ 5.xx�ˡ�
     #
     #    �����ƥबȽ�̤Ǥ��ʤ��ä����ˤϥ̥�ʸ�����֤���
     #
     _HOSTNAME=`hostname | sed 's/\..*//'`

     case `uname -s` in
          FreeBSD )      echo FREEBSD             ;;
          Linux )        echo LINUX               ;;
          AIX )          echo AIX                 ;;
          HP-UX )        echo HP                  ;;
          IRIX )         echo SGI                 ;;
          OSF1 )         echo DECOSF              ;;
          ULTRIX )       echo ULTRIX              ;;
          SunOS )        case `uname -r` in
                              4*)  echo SUNBSD    ;;
                              5*)  echo SOLARIS   ;;
                         esac
                         ;;
          $_HOSTNAME )   case `uname -m` in
                              IP*)      echo SGI  ;;
                              i386)     echo SCO  ;;
                         esac
                         ;;
     esac
}
