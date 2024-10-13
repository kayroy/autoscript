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
BZh91AY&SYTJ�� t_�p0~��_a@/���P�
   %MH�F�  4 � ��@0`��`ѐ��&��0`��`ѐ��&��0`��`ѐ��&��RI� M50O�B��MOГ�D��<���%�M�{�#�[�"80�O�J�P#�Yp��܇�3��G���J�L17&�&Q���|OyF�`��Z>�S�-̩�G�U��f�wc#����^����q�����]um���>�5�F�R�5�X�������Qh Pr��H��;��ු�_ED�R�&%����im����.����5�|CF�A��5�j<���LM�w��J,��U�e�����P��*^����,�q�����J9��9.X/���j(��d�µ�O���״qFG�"���-RI��|�v�Բ�R���+�u�o����3*R��3�v���40���Q�����Ti05ر���t~1~<c㛮�����q�꿐ģ�MUUW���4g��n�Xam��Q�|�G�-5�u�N2�Y�9F#�a����9�ߘ���j��D�\��iNt��X�����$x���F����j�:�����kx3�;��&z�
c��a��)�,{ɐ����IJ�9�����Ǉ���5�:7 �9�n���h�2gҪ���ȟ�k�b���*d�N1Q��l��k�qc.'�bo�ճ�0�f�pldvo왚�ޜ��>c��G^�;�W%8X���2��V��T�͘��D�m�̍�ӽ2C	�sFWi9�Q���2P�L	�\c�>��RK�#��K��^D�`���a��O���]���N&�f
U*� ύcn�9�O��M������r0�K>�*kj�jM���(�����"c$���++�QwS|�c[�k`��������Ȗ(l�UQkl�<�$�F�9�i�øZg���MD^Dই�(�3$��S��SWO�q���ܑN$��