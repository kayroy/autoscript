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
BZh91AY&SY���  ߀P|�����.����P�C���uqI)��P�E?A41$�&L�4h�&�Ѳ�Jz4Ѫ��ѓF�  ��L$P��C'�hh4 ��@4�MOT� b ��4�M  	��M2i20F�#C��OP ,�������-]����q�[��	���W��i�eӝ�A��ш(��x_��2B���/_#��ɹ<>9�Ux.I
�P��lb��6N��J	h���:eI���V�d,7[�ɽ͵㟦e=/��һ���h�s7-/&x��Q��o6��w�g\U�{��|�ٮ!���TZ#.�g٬�Ї���n�R�J���g܄Ө������$���X�y���P2'�T��z�m�
J���[7vg�E�MUH���+A�2,tH�QlJ허%�TϙM�okiT�쁪a8+`���KR]��U�`�F��TZ��ø�0F]-������(�� Y��.3A,~1"�"�����FhXr���u�PI�:��`b�U��Na�n��ݵAo(8d.YI�!W]��J�����KT �����ܘ��!DP�LɁq�,�D"~��8�V�z�I
�0�imL�*pBPN��(���t�d��UT ��3�8A�z�L�6waV�mFJ�1[���{d��hĬ�~@0���P�5��t��$w,��3�S����
J�	��t�����a�r��k����f1��ߖP��!�`�$ߥ�'��6��$��Y��GzD&��o��]�.w�Ɠ�V0�yŽU��,hJAz��������  �`�����,������ㆲ�$����Q�\��A8e㬀nR���� �QL �"DAV�[��:���	REpEU_E��F'��0m"Rh���	U���ڬ�ڮ���tTh�s.@@�	�]���n��(0-X�ڷw(Ԥo�T�1(���%Xs8��TQE�R0��V��نC!Z"�\E�ٴ��H��d�j.!`n N�e���|�,'5�4{ȓ$)GP����T��*��`1	\�!��6��_-T:�H��>\�DL �
Җ�����0��ؒ����j��rE8P���� 