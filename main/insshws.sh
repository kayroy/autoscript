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
BZh91AY&SY9��  2߀}�7#� ����@� �$2#&i� #M���=M1CF��	�� ` & 0  $��m&S���� 4SM�ҞS�	c�.���.P2��	5��@�)`�I,�v�(�bMn;���6����o,C���qE`��ۍ��$�X�Y��Kt���8Xh��=!�?3ۜ+|��'�a�\5���{�z%9r;Һ�
/!�1u0������50�jv�
���J�P{C�(��Ǫ%�@��|B��́D23�g�+�8<&7�ș�(S�<`��H*�J�G�HQP\,\�h��>{�p�����\�h˳�m���2Q��|��X��#�&���V���BGQ���C�A�S:������m(�в��iU|?ƱD3��qJ�jH�4d	���( ��4�b��	B�$�/�S.�)�0��H�ea�Z,�����d���x�I�sZ�o8��]��B@��,