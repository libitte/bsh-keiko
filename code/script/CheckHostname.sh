
#
# �ե�����̾��: CheckHostname.sh
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

CheckHostname() {
     #
     # ̾��
     #    CheckHostname - �ۥ��Ȥ�¸�ߤ��뤫�ɤ�����Ƚ�ꤹ��
     #
     # ��
     #    CheckHostname [hostname]
     #
     # ����
     #    ���ꤷ���ۥ��Ȥ�¸�ߤ���п��ʣ��ˤ��֤���
     #    �����Ǥʤ���е��ʣ��ˤ��֤���
     #    �ۥ���̾�Τ���ꤷ�Ƥ��ʤ���硢
     #    ���߻�����Υۥ���̾�Τ�����å����롣
     #
     _PING=                   # ping ���ޥ�ɤ�Ȥ�ʬ����
     _HOST=${1:-`hostname`}   # �����å�����ۥ���̾��

     case `uname -s` in
          FreeBSD ) _PING="ping -c1 $_HOST"  ;; # FreeBSD
          Linux )   _PING="ping -c1 $_HOST"  ;; # Linux
          OSF1 )    _PING="ping -c1 $_HOST"  ;; # DEC OSF
          HP-UX )   _PING="ping $_HOST 64 1" ;; # HP-UX
          IRIX )    _PING="ping -c1 $_HOST"  ;; # SGI
          SunOS )   _PING="ping $_HOST"      ;; # BSD and
                                                # Solaris
          * )       return 1                 ;;
     esac

     if [ `$_PING 2>&1 | grep -ci "Unknown host"` -eq 0 ]
     then
          return 0
     else
          return 1
     fi
}
