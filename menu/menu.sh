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
BZh91AY&SYZ�ճ y��g� }���?������PD@  `�>��{ӜM��p  ��!L�F��䧩��=G�f�M����5M<D  ���F���1��� i�  � Di(ڏQ��A� �      ҄)=OSOSCC��� � 2 �  E ҇��@d��6����6����@� MOAQ��)4�b��h�����5 3P0����m'��R�JS�f��E��x(��f͇�Dۯ�}�hP��~�IJ6	4"LF"��XH��[�l��c� V�����9��&i���$$x̓Dd���U�ܛT��^�Ā��I�e�[B�g���
��s��Z�ER��m�n�m��F�NL�P��^�Vֺ��{���ffff���L"�w9-$��KDm���ِ���fH�'q���-�r��SU��D�MY��?����ʭ�8�ܤ^
��������{�u�+�Ig��d��,���i��k ��U��k�8a�q�a����m7�ћ>���ۨ��WX�/.�W�.q�<7�h��XE,!��kV��W����x�]E�Q�Ү� F�AR�
�,����@�. ��T��<����n-�$)[�=e���}QQ���0׵J���d-F� M�����z�ϒl@ـ��?��F�"Ni�&���4���Q�g�,��f�أ��:'��L�����94�g-^�|S�팮���o@���
'ҽf"�ý%�Z9&!+z�p�X�ϫk�^���(_�9��|ې  ��rU�RX,��V�B�]]u[�ٸ`�������a.�
��!hmp���6%�sOJ�"�e,iL<����(�r����}�^��:��|���Q/ԟ�'�W�9*�͐��m�P,�j�]>���R���i��\�EusZc��\��
�-N�Ru�=dvä���zsCB�I��A��W���(�j���D1R��'%���F��	"�1g��Vo#+�"��$��"�1#��R��S�d>���G��N��i����dŅ�%+Z�� Aqڊ�@T��[��V�����ܔg!�;�HydV-P��_�s�I���^����Tye$�[��Zx�v����m/���c������{:�w���)9�k��^�b=	5���#��P�xC$�
�]����ؓkFͣE!�kMZ�Z��(@P$ԗ�f�%g��A�(l!J��5��}�t��18ȾKt��_.8U�!~7�6�#ƙo��vz�Q�P�JY�T!�0��b0��6��>٠a.�vz,�]�u,�W.����A�����>r�TP":B.A�qbP��zЏ�2,
.f�K��$4���.�����3_��	.�Vڅ%�@�l�t.\ТD�536�C��$�A��_`i�u�LL�f����h)3���4���L���M�}��0z;c�ڋw�;�M�-R��|���]f��]w�����<���ۤ�6��kU*j�a
�X��p%���E���lʒ�E���4M~$�"�.�G�v��1s�2�o����B��u,L��[D��2��&'�~���/$J�n�-�D�䒕C���J{�̴�����\ ���)ƆKA��嚒`��vȨd���"�R���C�ِ��V�U�>��5\��b0Km��J� NR%��Ȣ�E#"6!�b>3<���� �\�Ѻz*���B,��V@�� F�1#��)�5�0�b���$D����+0fH�##J	�ݳ��2Fөg}�ƽ'e�H�D;���Os2�<��H�0C	�R�Z7�D�B9UEE�������5�p�d��=A���1�z��FdV�Ä��2��Qa a��ځhA � �
�ךA�
Q�H�%	�
B�pD�̩�rE8P�Z�ճ