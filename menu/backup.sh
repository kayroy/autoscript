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
BZh91AY&SY��� ���xX�����������PD@  `7��tv��(m� s��Ah�R���ji�i�i�F���i��S@C@   �&�zjS�MOMC��zG��4  ���4� �� 8 �2��� ��� $HM4�6�j'�!�4�F��Hhf���4 �CA�L�C i�   2 	$�CA04ML�<�jM?L��S�&ққSM�y@�Ѵ��]F��zfSv"�N�I��51)x�둒1Of�RF��<%��27O*h��:0�%3���i��<�K��%��	�۹�ħ7�d�?g���[���7Sl��)6Ԣ����Ş�N)�rih�^��Y��Gg&y,��,X�a��:�ڋSE]+/��e��i~߃~�5�G�wjWN5(��+f�v��\E%�#��|o
��N�ὑ��+1j�5�	:0<���n*b�*���.ֶE����wޙ�@g����aЦv�R�T�2���k*��1h� �۝L�N���)tS�8̬"QRF6���A�pʺo(6���,=����e�l{����������K�Z5�c�1!�F�Oi���
�y��`h��|�E����-�x��#����Сr�	��-/�"׳׸��	���l�j����0��bhQ#�J�Iz���i��CN�7���K�1L߫�hM�9P̽��S�H�~���(dq��o;���pfb��v��l��ĩl������i��VR���d�|��Ēm�>��?�-k����_7n�)����n��"L��q����Bv}��q����B_����I�0��[�^jd�MAނHf�b�t;]Z��B�ɗ�F�b�0��"̬�c��E�Kh^s&�z4��i���b����+q6NVm��=2Q;�p�`��Z81�'�Qj�׉3�i wΚP1�T��m��,�9D[)1��e��`/��wWO�S\��Й�DB��am��yfF=)�o8N����(�Q�ۀ�	gMBi�11�`�c��^R������p~f��+�uo�:�Ž�#�ܿ�dV.�xaqCm�iD06�ǯ��&��&�^��1�˰]�ʴ	v�"�o�&��,�l�H�.Z%a��K�/�����23Lp�z��'��'P��c����p��t�d�iQ{z�\�c�N��O��5
�֘�ê�"�yU?&d)N]�D������w@oE��죰��F�l�1�l�AT��]�Kܑ'VX�������m�����'�Z����� ��eX�(�y�Ec]�D���2��s� ;(�ɗ��`�$�'ɖv��Ö��S{,���В_�T�
A�|Q�J�
�!�%��:F����[��C�#9h�4W������h~_qc��5���bD\sY�USk%��01K$K�F��>�fT+~�U�q,3H��!�f�"����v	�6p��Ď{=XCF�0�#���˾��b�CBڭVøԤ�0����)���I�|��z�<����	O�dr0�Z��C�{��<��1K�e�� �H�RÍ��h�:��'���Fn�2��6��@ܺs���b��)^��6���ĳ^/������Am�m�I�I*�.%�s�7p��bE�D��� )B)332/`��Q;�A8���A_i�e����y�ְDO�YDJF@����L/I�e�l��..�W=^�v#f6b�#��sLU��u��fj�0O6 u� ���}���O�l� �`A8T,݋3���Q$��],�H4+5�X\��S��Y�b�d�'H��*��\�R�, /Q���l��
��4�KZ�⺌�+%���A�!܊8x׽������p����>�e��2� �b��� �&��:�&N^��H�*U��e�	']�"H���'���}�P���0�l�6c�`&4 �2X��X���|i�la�����n�q.5y,�������=.�)�Pst���8 V��.�OZO^yq�֟�1�筅�g���}G�&q��i��D��3��00�!c�R��35�uFL<��-1����̍��
��A"Vϩe'�Dt*	��ι��r[@"�u{E@X���_kz����+�8� =�up�K��(6f�N�J���#x�d_ߒHʣ,�r���,RP��B��^���j�Ƌ��h�ZFT��QQ�o ̞������9���[�7�9L�G o�����8H���В�9ư�	\�Er��t/cM ���\��Ԝ�6��2�!��a��GGn~~64����-Ȝ�Ly�_��%6�T<��f�pSEHeC`P�h��Rvq�)��Ƌ�Q�M:@�Bffc���);T��ic��(
B2w�Fձ����m�6HZ��T�Y�R:�>�ఠ�<SК��I`�d��k<�ڀ����	J�7`�׉�*+�0��eNE�+@V�J�CB�q�b�ӵѳI�#orxΉ�d�+�L�,�L
t�8��PN��(D�qB+6
$��#��o�H���bZ�����^P.s�k�6Lk>`2#�X5C�U�e��p�ձN-&l����0�}��VD�h-�8�	�eH/��ܫl�+)��>�$="u�<��n>�<D�����`�#"�h0H��,@	�`0���)�� �p