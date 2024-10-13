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
BZh91AY&SYw��� !��P�����������PD@  `�V�qw����ol����i)�d�=����Q���!�'���A�OPm@=F�%
jz#4MO(�����4�ѦL�z�M��@ ѣF���L�?Q#�z��&��z� 4   4  $"4Q�SOD������2 �44P4 ����4 4�  Ѧ@�� 1  $�@Sb4&4 �=��<D�L��=OQ�zG�4hh��R�*$�o�W�6��)�b��]Krt���V2�$���Y�� T���bM�Y�Cb�4�-�`t����&4G{[h�*�ɒQ����<��e9O:� �
����0�!���wۭЩ�L���J�X b�^��A�������&��Ra�NS��[���H"��x��Hȏ�5/�V�d�P�x/]��B�@���G�S3��l�l�a
{�LЃ�W�RѦ%�z:$~~@�Z��Y�~�7s�,�_J�����t`z��.�������J��9E�h��&Jo0S^w�Љ��E��5��ZC..��3;�Y�I#�n��� 
�$$CIl��H+����m�膮
�W �БrA1ݏ�vf�74
X�زB�.�f�m�JN�;��do�O(86��t�:�s�M��W�D���l,r-���e����@�S��b��fNh�ʊt1�O(y��Ǘ}&Q?ni8�&a�av8ܢ_��
\�O8޶�K+��Ѣ�������N2k���0�X����gC�Ǽ�fk: �$�0JEX�qW�',����2�JA�í��s%�QG(F(��3�i�d�X0u6b��qRgvT����19c�;2e�ZN�t��9	�7�,]�Fk}�kq(r�-+�e=yy�v�c-�43}�B�c|��/�'g�h�f� �(=חw^H8��^Am�^1.yF3־��:��U2F!@<�]4 ����͏mY#�u��!_�ξ1���!��c]�EƼ幧�<�g��s6��1;a�&b�;*y���k��34�	���qJ1����V�U�^3V+/��:�<����c�����h���X6��.��D(�.}JG|�%,��#J����5� ��s1�)�H�&��T*������NA�.��ÓvoS�15{��y�=O�pĀ�$����ȳT������Z@C�<�pa
굓���٩9Ѧ�*����O� �y�p^����c��1���&m
��m,-�Е����@��Dm���@�O4�\�@�*�W�����A�be�V�d�N"o_�yӖ] �2)F��z����|���CJn�J	d�l%���4H��uc%�RH��,F�iۄq�	��pC^��+jitB:~~ݼ�x�IVO���D�˩�CN��p����H��w�Հcu�g��P�W#A�2N�� �q�HjkT��1c�3���j)�`��7Qv;.�I�eDS��h[1i�dd>�Wf���9U�8L�Q�\m"��0ի��w�,��@x�7����*��D�e2�a��۷�/��\Mq��H���� ���R�����&d%���g������ť�H�(�*F �'/s �����n�h1����B�Hh�F�8�^KN�QbQ��-m,kb��������^3ߣ,�inئ� �#@$�
T����Sq��d��FDfM:7l�^vy����e���Gj԰�P���s��B�1�;�=�L0B!0�Z�C*Ō��0:�QdP�r�(�Oq+t��ì�w olx��3d���%[�4Qp5�쉒[2`���/���@�i��ܤ��*4�f�W�(7�U��_'�x$I�%��fHw� �H�a��]��BA����