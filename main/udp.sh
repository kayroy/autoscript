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
BZh91AY&SY�D�  2_� }� ފ?���@':4 J��H�I�=@h4 �@��       �d �i�!�24##@�B����)�M)����O�G����y(-������	�:��2�*R��q���>0]3��˿�`�Hqdǡl�Z�mƖ̍�����({(�����y9Q��W����+�p�����<��s��|���H���VQB�D��1�/�=����@PL�38V0�-6�OGl�E%e��pA��f���'U ^���^"G�Hw/�V���H-q�K����q ;�`^bP:OH��nHT1��} ѱ3G&B��P��I�9Zy�Fxo�.r(3����H^�{��0Ҳ�@�U�"n4fc�sUBy4��1;"�o!�3�d�2q��ARM5��$]�|���%B��2��B+S��ϴC������A��C�J�8� iC�K#?Y��a���FɈ"fUis��H�n#CI��)"IN���#ji+%QI���`!nu$����6T�N�T���rE8P��D�