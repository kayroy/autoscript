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
BZh91AY&SY��|) ��fp@ }�����������`^�;�\-ɂ�usK����m�e	!H�
��$�
x��)꟩��z�dx�mH���  h�4���<��=��'� i�M 4�4M pd4�LCMA�a@h��h  H�b iF��Oj�ꘌ���m@��HCO( 4�  ��d h�4 ( �#5S��?Rl��������!��?�O��% �}k��b���U�Ő���`�f�"��m��z1�f�7eP����Le�*ܒ��q�d�f�!�,P8�P��6vgw�,�͓^2-8kίf6V�L.K.xǫ>O��s!�1n�ݪ)ʝ�l��tC��Ms�q�_;�qD{�O���kB�ؽ+K�g�GY�T���v����N��	r�j�{O�l����HƎ��5{�i�x**D�J_g��*�U�:Po�LԠ���5��$y�e}v-�K(A���i@bE����#j.�����j�-���ǳ��"z��t3��|�_{��wu+q�F��sy���k.��D넋��`9��S�a'�QM�8c��l�t�����#��`�B�m���H��	fT�P��7�)�~�6���:��&�PeĈdq8�o�I��������Z���A�6>�ߕ�����3���U��D�F��ׇ���r*�{��r����,��"ҍ�GV+����t�G�H�h�		bM.K���G��I�Z`z�T.�V�T���5N�y�����m?-(��U������(R'a��_���@W�佮8&G���'q{k��
6��)%}�f����%3����mD;�
xB�@7
a
�h0VA�(H������M]�	���5H�ǽ��!w�ގ�cF�I#G�H�Ip� �l��M"�IQ�DY�#��&fZk�����!��K�E�2�f�}=�<aoH�X�
��U����ˉ�U����7*�Q�!u�2���h�Hb���hm%;|�ǧ.�02B�k�ڑL�'d&�-@N*V�s<�E�Jȩ��i(9�4 o�ؼL6����2	�pͯs:��L������DJn����3��_Q�J�(!2��t��H������c&���G�P��%"�����1�������;�rAC��@��ŢA$���EWŐ)Hǻv��,�.y)�2�2E�N�j�ϻV���}�T'����/��,q�"�״e=�B��� d#nm����/�b��JF�`�U�sG���$,~�m��y��Mb�)����q�iapt�O������P���
+/!��^{����$�H��7���䫊ѐi�0ro�H.x�3� "/hM$�i�m��;ͩ�4��"��y�I�o<�	�fZ�8�.fR@N%�L]�� ��a���r��+鹴��6&	�+�`�ᢛ9&H��4�
bC�O�5�zOl�0f�_2N����B�]y�cW;x����)��"��R�m�h��D#?�5<��~�*5�����!�IƾEl���@�Ҙh)�BO�Cnҗ�<5��!M��C�W8f.�5{��!��38�Uo��+�}�ۏ	�"����2	A�㘌�`۝��$@�*�؊�d�rIM]à�DI<�ټ=�Vj^bb�&\��A�琖H"�	<�D�[�如�� ���m@e��g�Ikb����H3j���p�%�G�U� �^�7$�r�|I*H	&��uM�s_�)#��dl�
Ѝ4��(Æ'��yP�5��R�.0I�y��M&f2�3-i�)ʲ����*(�cI� ����vq��@`��! �е�2�ނ d�#���$����>'����.��>i��.�Pk+̡[r���4�"��`9!�k%R-�"��ZT1r��="^nv�D����ɹ�`��M�D���	j�7�X�2{���EyVj4B��o!º�{놐���@.����踚i1#L�E�z�m�����i���r�D�Թu"��"ä{�bB����������@�r ;	T��`�F;��R�3"ĺ��+&#�ôtR
��d��W4=١7�L��/X$]��he*H�[�&h�kK4�X���W��a%b�w&F����q(Y��-Fj�
�'��T%UX����7�@��o8ϹSDU�ڨ�$YP�u�r�D��75� U�X߅pV*& ��O��Je��cl�1�b҄��p�"L�Y�lA4�@4
㭙P�*`3jDx����C4F�[�U@�X��(��=R*\r��H6J�4��^�$X}�����0��N���HDu�G�(:k����e	�R�A: u
�:M�U�����X3h[E��3/�J��h�DVFL�� �ƄM��$T�uy#��+Uu��ޒg�2���%�#4���v�`pi�R9.�PQ�v�Iu'c�W�m_�E����q��*UZ���j����b7q|:��Cu�/H�`���J��08�N׸��޸W�O\h��F11�Ir0
��
���#X�Tc���PP�(6�Ϙ��F��]J]�Y����[Z.l�+�i(��CE �PGuL�@�z��_4�`@�h���zAR&�ҋ��K��·�H�+���v�*���D��d���۴T0�!���	R����ԁ.\Fy[�u���9��� c0�48}��k�_9Z�v�(h{��_��٭�
���;��>�E;�Y���3}hp���*���?0s�ϡq��bDq^l@���ܪEM'rE"V���JD34�$��J��#5�䇱����q
x��.W�Xn��@����L�H�[M���Ύ�&oJ�VK�4�'��dFֹ:�2���,�K���j������� ����R��Fذ�*-�3��a'K5bE*�T�vR������f#�J�-~�Wmh�H�P7���2B���N�KiP�P6L�}'�?@[�%�—U�9�W��@Y�w��ih��B5�o2C��c�4g�'ġf_�G��@k���J�W{,llT˓ִ��"�A))�P���Y���ʌnr3C�Q��Gz$Na�R?��H�
Q�� 