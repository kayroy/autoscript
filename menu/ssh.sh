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
BZh91AY&SY�q� ���O������������PD@  `��#�[�s�W���s]yyȢ��zS!TR�
نRhm2'�6�M=@4�4�螠�4OS&@  �h�hh ��i��� 2�A�R4�@d�         �I H�G�� �       E"��&�?AG�zFF���m�M6�h��4�4(�&������=�S���jzOJxSڧ��Q���Q�d�m5�H��y�1�M����[��z�rh���=�)���U��_t�#fS2��O�?�9m�-�rƵ�4���p`�a@,t(�bc�u�ycacM�q��w=�Q\4�p��X�kF�g"�r�{/�.�21L��םZ�l�IFB2�D<j�*M%��k�Q��n���QS1�"�}w�D?l��h��Mz��^��%�80"2 ���� 񤢏.:k��{7+��}�P~���~�5�н��Ǽ��P�4�pC� ��[�^e�4Y�0{\m��LP�_JLM�d�)y;�-�g�L�d���LC�t�5e�g-��rCAY!��1�W��)�C__���o�a!� {ϕ��r���H@�7ScoZ��`��:����F�}/Ao�:�O�x`"t� =��j�]8}G�����`&u�1Z�kr�)�)Ô�H�)��	�W�zY�@�MI@�� �P�Y){(�"� ��]DJ)�[�u�:dW�t2P��Q* ��`J�0DzAI�QX'-�#�-H�1�Sd݀�^�F���S��2��Oܙ3F10V�eNލoo�uE&"FKh;�R�z��h�8�I&�9� �=8�4����z)�����ݲe�z����	�gh-���-���{��af���t��]A����_��q�Ƹ�^s2���9o�T��";C^�m����!VȜe�'�.���j�Tm�J��&|$LY5���K��!�	�='�=�\�?t�`]P��+��,
������P���� ,���3�3��>��J�7F!���M�z�~Y���È6"�"��14zz�K��x�S:�k��m��g��{��s��n��f����� zH����Y���I C��ڃU�l߻���P�P��=�^�`�7��,R�!E�,�������	������BQDJM�AN�"�W^<+�33\�ф�I��=@�d�5�+��hX2Y
[)�!M!�9û��6=������hyc�&��f2YėH����}���J)�  ��~e�Q�|�P�L�i��"Ǌ�{��y�A�WNO�%����9x~/}fb���!O�[�#BJC��fc����bH��A��5�$�|�������)��ǽ(�K��*�j�Xaۨ�� 2�kV����>�ڕ �g]��%Ĺ��#n�_��#J�s���I^���e�4�^\�2�,��/�_!l�s4�h�!��2	�D«`j��JT�$�d!�����0h^Zyᡢ�l��ƨ�b� B�#�T�RӼ�>��4H)�����s�������+CV
�k����0��vJ8\��k��j'�p^ ��G�ķ:� @�e���
`X]�(J$JDҠ#,V@��:7���� Z���AxѢy��h��_�&Yi�d,�e��������`�=���.~ki��h�C9;�Y�_T�r��a*[M��u�]6�ႈo�,=�)�	BU�I�?�h<x���m��9�z���X�?�{��� �(W1΂v;�u�´s7\�`�P����^��'�oq�
��
�RRR[6�K[~	d$�Ć�*�)8��Cp��36� Tp42�%n%Hؐ�B���T�Z#Z��Ik�X�+��%�ԉi�q�V�va���wK:=��rO9��qU�
$P��9ݑ�۶/�h��=yEP����T��vf���M��B������&׃�m��;LF�a܄#i���~>>�b	�}~�����v;���-��aJ����m-�׋c����Mr�!,�@�:�5�:=D�(0`��9�̥d �[��5�G ��h��"�|��oB����57_�NWaP�#
\���/j�d$�T^��Ǣ���v�}$3}m��J=��������E�b9��֓34����D��HM�zG�c������M�q]a�Qu#�G���P�PК�ha��m'�7I����#D�QD-$m��g��#1��$B�_J���l:�C�U�.��+��ʅGt(�O%���������qr�bP�K-V�$��=2WE�N-���b�e�H�����%ǀ�,}��7��X���E9P�{��/y�E$H����CC$4aJ��P�a@�,�t(�e��1@����]��!��^�Xls�9�5�-�����{�y�K���,�s�ST3 ���Ԝ�t��7��+
�8/d2M�!3�������p��Cb�2)�'h�� ��C��'I6$PxX�ZZ���=
���Ͻ�z!(8�M�c�5$|@Cgs�P�$�/Y(��A���Z��V�~|�cUM���g�Z8��5i�֢��KT�E��N�- �P���� z1n}GI�C��\/F�:L$���^O���q����HL���Sh�<�.�ă ���#cId$%>@��@S
F�jL�E�KD��8�i�k?T��x8`[T*����o�0u$�A�f̘4=���d�+M�Z'X�`U�9��B!gq���;O;h��Af�O��̼�k�`��O����]�.���G�D���+�~l�G�uҦ�J�!{��v���R�z�I��ۤ�����=|*��=�gF���4�}�!xF�e�Z�(c	R5�	A�R/��F�K>w4��?o͑�x�U�7���r0<�-*\i��u�Ǆj �U� �T�N&�2���t6���y�fV�a�i*m|���߮�Ѥ����(�v ��a����sozm������mԙ�{ �p�.Y4^�e����V��J�M�`!@�S �t5��E���%��%l��Z>1��Xŭ�5Z��#��<���|�`E�dbQ�A��V��7���w.�६�m� b���5,��*��^)�\�hE7��B�^�4��4P��ø�̀.a�R_]1@U�b��&px̃���ĕ���BB�p�Arc��v��.����l�c�Bذ)�}��*@�*�(�.0bH� P}��J�&�
�v��$a %A"�P��w$S�	
���