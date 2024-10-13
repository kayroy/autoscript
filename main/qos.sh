#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY��M)  *_�@��>'��?���@�wu�hh���⚙<��=M?T=#�1� 6�Rz�jiO)�dO)�4�Cd �!�LF��&)�z���h�M�� � ��h&���H�� �!d�}�����K���Nkԡ3[�}��7�h#�J�Cm��CR�H�f0��>pP5��c#I��A��x�]��ҥ�:i�ϕK#��,�����PI���L�lp�ꀐ�/��ؾ\D �M����P�����#���
]�Htٯ3�qva���Rtl3+�8����%E L��JT�&���"
?d��Wv��.槬�<�0�4�@p,�YMq�r�H+4��V2u�g@�g��a�N+����\H�Y�PH��N��ͬ����(�>N�9���T��5X�A^�@��$6�����B����/��U�dhЂ��D�6��au5��$�׌1�@.6A�r���U9혆&=nB8�&���'z��@��騩T2���@Ff
d���(�)�
�G��[�#�!=)��7��yق�K'�d ��"�(H^⦔�