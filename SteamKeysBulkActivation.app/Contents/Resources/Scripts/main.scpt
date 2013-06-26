FasdUAS 1.101.10   ��   ��    k             l     ��  ��     !/usr/bin/osascript     � 	 	 & ! / u s r / b i n / o s a s c r i p t   
  
 l     ��  ��    K E Activates all Steam keys' bundle from an opened web page into Steam.     �   �   A c t i v a t e s   a l l   S t e a m   k e y s '   b u n d l e   f r o m   a n   o p e n e d   w e b   p a g e   i n t o   S t e a m .      l     ��  ��    4 . Intended to use for Humble Bundle automation.     �   \   I n t e n d e d   t o   u s e   f o r   H u m b l e   B u n d l e   a u t o m a t i o n .      l     ��  ��    : 4 author: Timothy Basanov (timofey.basanov@gmail.com)     �   h   a u t h o r :   T i m o t h y   B a s a n o v   ( t i m o f e y . b a s a n o v @ g m a i l . c o m )      l     ��������  ��  ��        l     ��  ��    - ' Required to run from the command line:     �   N   R e q u i r e d   t o   r u n   f r o m   t h e   c o m m a n d   l i n e :     !   l   d "���� " O    d # $ # k   c % %  & ' & r    
 ( ) ( 4    �� *
�� 
capp * m     + + � , , . / A p p l i c a t i o n s / S t e a m . a p p ) o      ���� 0 steam_application   '  - . - l   ��������  ��  ��   .  / 0 / T    1 1 k    � 2 2  3 4 3 l   �� 5 6��   5   Load page from browser    6 � 7 7 .   L o a d   p a g e   f r o m   b r o w s e r 4  8 9 8 r     : ; : n    < = < I    ��������  0 getuserbrowser GetUserBrowser��  ��   =  f     ; o      ���� 0 user_browser   9  > ? > r      @ A @ n    B C B I    �� D���� "0 getpagecontents GetPageContents D  E�� E o    ���� 0 user_browser  ��  ��   C  f     A o      ���� 0 page_contents   ?  F G F l  ! !��������  ��  ��   G  H I H l  ! !�� J K��   J 4 . Search for the Steam Keys in the page content    K � L L \   S e a r c h   f o r   t h e   S t e a m   K e y s   i n   t h e   p a g e   c o n t e n t I  M N M r   ! % O P O J   ! #����   P o      ���� 0 
steam_keys   N  Q R Q X   & � S�� T S k   8 � U U  V W V l  8 8�� X Y��   X   Check if it is a Key    Y � Z Z *   C h e c k   i f   i t   i s   a   K e y W  [�� [ Z   8 � \ ]���� \ F   8 I ^ _ ^ ?  8 = ` a ` l  8 ; b���� b n  8 ; c d c 1   9 ;��
�� 
leng d o   8 9���� 0 possible_key  ��  ��   a m   ; <���� 	 _ A  @ E e f e l  @ C g���� g n  @ C h i h 1   A C��
�� 
leng i o   @ A���� 0 possible_key  ��  ��   f m   C D����   ] k   L � j j  k l k r   L Q m n m m   L M��
�� boovtrue n o      ���� 0 only_right_characters   l  o p o r   R W q r q m   R S��
�� boovfals r o      ���� 0 contains_letter   p  s t s X   X � u�� v u P   l � w x�� w k   s � y y  z { z Z   s � | }���� | H   s } ~ ~ E  s |  �  l  s z ����� � n   s z � � � 2  v z��
�� 
cha  � m   s v � � � � � L A B C D E F G H I J K L M N O P Q R S T U V W X Y Z - 0 1 2 3 4 5 6 7 8 9 _��  ��   � o   z {���� 0 key_char   } r   � � � � � m   � ���
�� boovfals � o      ���� 0 only_right_characters  ��  ��   {  ��� � Z   � � � ����� � E  � � � � � l  � � ����� � n   � � � � � 2  � ���
�� 
cha  � m   � � � � � � � 4 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z��  ��   � o   � ����� 0 key_char   � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 contains_letter  ��  ��  ��   x ����
�� conscase��  ��  �� 0 key_char   v l  [ ` ����� � n   [ ` � � � 2  \ `��
�� 
cha  � o   [ \���� 0 possible_key  ��  ��   t  ��� � Z   � � � ����� � F   � � � � � o   � ����� 0 only_right_characters   � o   � ����� 0 contains_letter   � s   � � � � � c   � � � � � o   � ����� 0 possible_key   � m   � ���
�� 
TEXT � l      ����� � n       � � �  ;   � � � o   � ����� 0 
steam_keys  ��  ��  ��  ��  ��  ��  ��  ��  �� 0 possible_key   T n   ) , � � � 2  * ,��
�� 
cpar � o   ) *���� 0 page_contents   R  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � "  Making sure keys are loaded    � � � � 8   M a k i n g   s u r e   k e y s   a r e   l o a d e d �  ��� � Z   � � � ��� � � =  � � � � � n  � � � � � 1   � ���
�� 
leng � o   � ����� 0 
steam_keys   � m   � �����   � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � m   � � � � � � � T h i s   a p p l i c a t i o n   w i l l   r e a d   S t e a m   k e y s   f r o m   a   w e b   p a g e   a n d   w i l l   a c t i v a t e   t h e m   o n e   b y   o n e . 
 
 L o o k s   l i k e   w e   c a n   n o t   f i n d   a n y   S t e a m   k e y s   i n   y o u r   � o   � ����� 0 user_browser   � m   � � � � � � � � . 
 P l e a s e ,   m a k e   s u r e   c o r r e c t   s i t e ' s   p a g e   i s   l o a d e d   a n d   k e y s   a r e   v i s i b l e . � �� � �
�� 
appr � m   � � � � � � � $ L o a d i n g   S t e a m   k e y s � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  C a n c e l �  ��� � b   � � � � � m   � � � � � � � H Y e s ,   n o w   I   c a n   s e e   m y   S t e a m   k e y s   i n   � o   � ����� 0 user_browser  ��   � �� ���
�� 
dflt � m   � ����� ��  ��   �  S   � ���   0  � � � l ��������  ��  ��   �  � � � l �� � ���   � 6 0 Starting Steam and asking user for confirmation    � � � � `   S t a r t i n g   S t e a m   a n d   a s k i n g   u s e r   f o r   c o n f i r m a t i o n �  � � � I 	�� ���
�� .miscactvnull��� ��� null � o  ���� 0 steam_application  ��   �  � � � r  
 � � � m  
 � � � � �  
 � n      � � � 1  ��
�� 
txdl � 1  ��
�� 
ascr �  � � � I 2�� � �
�� .sysodlogaskr        TEXT � b  # � � � l  ����� � c   � � � b   � � � m   � � � � � F R e a d y   t o   a c t i v a t e   n e x t   S t e a m   k e y s : 
 � o  ���� 0 
steam_keys   � m  ��
�� 
TEXT��  ��   � m  " � � � � � � 
 
 A f t e r   a c t i v a t i o n   p r o c e s s   i s   s t a r t e d   i t ' s   r e c o m m e n d e d   t o   n o t   t o   t o u c h   y o u   M a c   u n t i l   i t s   i s   f i n i s h e d . � �� ���
�� 
btns � J  &. � �  � � � m  &) � � � � �  C a n c e l �  ��� � m  ), � � � � � @ I   p r o m i s e   t o   n o t   t o   t o u c h   m y   M a c��  ��   �  � � � I 38�� ���
�� .miscactvnull��� ��� null � o  34���� 0 steam_application  ��   �  � � � r  9> � � � m  9:����   � o      ���� 0 	successes   �    l ??��   2 , provides some guaranties against data races    � X   p r o v i d e s   s o m e   g u a r a n t i e s   a g a i n s t   d a t a   r a c e s  V  ? k  I		 

 l II�~�~   $  waiting for Steam app to load    � <   w a i t i n g   f o r   S t e a m   a p p   t o   l o a d  O  I  k  T�  Z  To�}�| = T_ l T]�{�z I T]�y�x
�y .corecnte****       **** 2 TY�w
�w 
cwin�x  �{  �z   m  ]^�v�v   k  bk  l bb�u �u   ' ! Steam is loaded, no windows open     �!! B   S t e a m   i s   l o a d e d ,   n o   w i n d o w s   o p e n "�t" r  bk#$# [  bg%&% o  be�s�s 0 	successes  & m  ef�r�r $ o      �q�q 0 	successes  �t  �}  �|   '(' Z  p�)*�p�o) > p�+,+ l p�-�n�m- I p��l.�k
�l .corecnte****       ****. l p�/�j�i/ 6 p�010 2 pu�h
�h 
cwin1 > x�232 1  y}�g
�g 
pnam3 m  ~�44 �55 
 S t e a m�j  �i  �k  �n  �m  , m  ���f�f  * r  ��676 [  ��898 o  ���e�e 0 	successes  9 m  ���d�d 7 o      �c�c 0 	successes  �p  �o  ( :;: l ���b<=�b  < ; 5 Special case for Steam window, waiting for a big one   = �>> j   S p e c i a l   c a s e   f o r   S t e a m   w i n d o w ,   w a i t i n g   f o r   a   b i g   o n e; ?@? r  ��ABA m  ���a
�a boovfalsB o      �`�` 	0 found  @ C�_C X  ��D�^ED k  ��FF GHG l ���]IJ�]  I > 8 some weird hack to get around AppleScript's type system   J �KK p   s o m e   w e i r d   h a c k   t o   g e t   a r o u n d   A p p l e S c r i p t ' s   t y p e   s y s t e mH LML s  ��NON l ��P�\�[P n ��QRQ 1  ���Z
�Z 
ptszR o  ���Y�Y 0 current_window  �\  �[  O o      �X�X 0 s  M S�WS Z  ��TU�V�UT F  ��VWV ? ��XYX n ��Z[Z 4 ���T\
�T 
cobj\ m  ���S�S [ o  ���R�R 0 s  Y m  ���Q�QXW ? ��]^] n ��_`_ 4 ���Pa
�P 
cobja m  ���O�O ` o  ���N�N 0 s  ^ m  ���M�M�U r  ��bcb [  ��ded o  ���L�L 0 	successes  e m  ���K�K c o      �J�J 0 	successes  �V  �U  �W  �^ 0 current_window  E l ��f�I�Hf 6 ��ghg 2 ���G
�G 
cwinh = ��iji 1  ���F
�F 
pnamj m  ��kk �ll 
 S t e a m�I  �H  �_   4  IQ�Em
�E 
prcsm m  MPnn �oo 
 S t e a m p�Dp I �Cq�B
�C .sysodelanull��� ��� nmbrq m  �A�A �B  �D   A CHrsr o  CF�@�@ 0 	successes  s m  FG�?�?  tut l �>�=�<�>  �=  �<  u vwv l �;�:�9�;  �:  �9  w xyx l �8z{�8  z %  Entering all the keys gathered   { �|| >   E n t e r i n g   a l l   t h e   k e y s   g a t h e r e dy }~} X  S�7� O  N��� k  'M�� ��� l ''�6���6  �   Close all opened windows   � ��� 2   C l o s e   a l l   o p e n e d   w i n d o w s� ��� I ',�5��4
�5 .sysodelanull��� ��� nmbr� m  '(�3�3 �4  � ��� T  -��� k  2��� ��� r  2N��� I 2J�2��1
�2 .corecnte****       ****� n  2F��� 2 BF�0
�0 
menI� n  2B��� 2 >B�/
�/ 
menE� n  2>��� 4  7>�.�
�. 
mbri� m  :=�� ���  W i n d o w� 2 27�-
�- 
mbar�1  � o      �,�, 0 window_menu_size  � ��� I Oj�+��*
�+ .prcsclicuiel    ��� uiel� n  Of��� 4  _f�)�
�) 
menI� m  be�� ��� 
 C l o s e� n  O_��� 2 [_�(
�( 
menE� n  O[��� 4  T[�'�
�' 
mbri� m  WZ�� ���  W i n d o w� 2 OT�&
�& 
mbar�*  � ��� I kp�%��$
�% .sysodelanull��� ��� nmbr� m  kl�#�# �$  � ��"� Z  q����!� � = q���� o  qt�� 0 window_menu_size  � l t����� I t����
� .corecnte****       ****� n  t���� 2 ���
� 
menI� n  t���� 2 ���
� 
menE� n  t���� 4  y���
� 
mbri� m  |�� ���  W i n d o w� 2 ty�
� 
mbar�  �  �  � k  ���� ��� l ������  � ( " closing until everythin is closed   � ��� D   c l o s i n g   u n t i l   e v e r y t h i n   i s   c l o s e d� ���  S  ���  �!  �   �"  � ��� l ������  �   Click "Activate" in menu   � ��� 2   C l i c k   " A c t i v a t e "   i n   m e n u� ��� I �����
� .prcsclicuiel    ��� uiel� n  ����� 4  ����
� 
menI� m  ���� ��� < A c t i v a t e   a   P r o d u c t   o n   S t e a m . . .� n  ����� 2 ���
� 
menE� n  ����� 4  ����
� 
mbri� m  ���� ��� 
 G a m e s� 2 ���
� 
mbar�  � ��� l ������  � ) # Go to product code activation page   � ��� F   G o   t o   p r o d u c t   c o d e   a c t i v a t i o n   p a g e� ��� I �����
� .sysodelanull��� ��� nmbr� m  ���
�
 �  � ��� I ���	��
�	 .prcskprsnull���    utxt� o  ���
� 
ret �  � ��� I �����
� .sysodelanull��� ��� nmbr� m  ���� �  � ��� I �����
� .prcskprsnull���    utxt� o  ���
� 
ret �  � ��� l ��� ���   �   Entering Key   � ���    E n t e r i n g   K e y� ��� I �������
�� .sysodelanull��� ��� nmbr� m  ������ ��  � ��� I �������
�� .prcskprsnull���    utxt� o  ������ 0 	steam_key  ��  � ��� l ��������  � 1 + OK'ing all requests until window is closed   � ��� V   O K ' i n g   a l l   r e q u e s t s   u n t i l   w i n d o w   i s   c l o s e d� ��� r  ����� m  ������  � o      ���� 0 	successes  �    l ������   2 , provides some guaranties against data races    � X   p r o v i d e s   s o m e   g u a r a n t i e s   a g a i n s t   d a t a   r a c e s �� V  �M k  �H 	
	 V  �8 k  3  r  # m  ����   o      ���� 0 	successes    I $+����
�� .prcskprsnull���    utxt o  $'��
�� 
ret ��   �� I ,3����
�� .sysodelanull��� ��� nmbr m  ,/���� ��  ��   > � l ����� I �����
�� .corecnte****       **** l ����� 6 � 2 ����
�� 
cwin G  � = �	 !  1  ���
�� 
pnam! m  "" �## $ P r o d u c t   A c t i v a t i o n C  
$%$ 1  ��
�� 
pnam% m  && �''  I n s t a l l��  ��  ��  ��  ��   m  ����  
 ()( r  9B*+* [  9>,-, o  9<���� 0 	successes  - m  <=���� + o      ���� 0 	successes  ) .��. I CH��/��
�� .sysodelanull��� ��� nmbr/ m  CD���� ��  ��   A ��010 o  ������ 0 	successes  1 m  ������ ��  � 4  $��2
�� 
prcs2 m   #33 �44 
 S t e a m�7 0 	steam_key  � o  ���� 0 
steam_keys  ~ 5��5 I Tc��67
�� .sysodlogaskr        TEXT6 m  TW88 �99 � I t   l o o k s   t o   m e   t h a t   y o u r   k e y s   a r e   i m p o r t e d ,   b u t   i t ' s   a l w a y s   a   g o o d   i d e a     t o   d o u b l e - c h e c k .7 ��:��
�� 
btns: J  Z_;; <��< m  Z]== �>>  G r e a t !��  ��  ��   $ m     ??�                                                                                  sevs  alis    �  Macintosh HD               ��vH+   	��System Events.app                                               
K��]�f        ����  	                CoreServices    �� �      �^5�     	�� 	F^ 	F[  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   ! @A@ l     ��������  ��  ��  A BCB i     DED I      ��������  0 getuserbrowser GetUserBrowser��  ��  E k     �FF GHG O     �IJI k    �KK LML r    
NON J    PP QRQ m    SS �TT  S a f a r iR U��U m    VV �WW  G o o g l e   C h r o m e��  O o      ���� 0 available_browsers  M XYX r    Z[Z l   \����\ n    ]^] 1    ��
�� 
pnam^ n   _`_ I    �������� &0 getdefaultbrowser GetDefaultBrowser��  ��  `  f    ��  ��  [ o      ���� 0 default_browser  Y aba l   ��������  ��  ��  b c��c Z    �de��fd F    #ghg n   iji I    ��k���� ,0 applicationisrunning ApplicationIsRunningk l��l o    ���� 0 default_browser  ��  ��  j  f    h E    !mnm o    ���� 0 available_browsers  n o     ���� 0 default_browser  e L   & (oo o   & '���� 0 default_browser  ��  f k   + �pp qrq r   + /sts J   + -����  t o      ���� 0 running_browsers  r uvu X   0 Ww��xw Z   @ Ryz����y n  @ F{|{ I   A F��}���� ,0 applicationisrunning ApplicationIsRunning} ~��~ o   A B���� 0 browser  ��  ��  |  f   @ Az r   I N� b   I L��� o   I J���� 0 running_browsers  � o   J K���� 0 browser  � o      ���� 0 running_browsers  ��  ��  �� 0 browser  x o   3 4���� 0 available_browsers  v ��� l  X X��������  ��  ��  � ��� r   X _��� I  X ]�����
�� .corecnte****       ****� o   X Y���� 0 running_browsers  ��  � o      ���� 0 num_running  � ���� Z   ` ������ =  ` c��� o   ` a���� 0 num_running  � m   a b����  � l  f f������  � 0 * This is bad, defaulting to catch-all case   � ��� T   T h i s   i s   b a d ,   d e f a u l t i n g   t o   c a t c h - a l l   c a s e� ��� =  j m��� o   j k���� 0 num_running  � m   k l���� � ���� L   p v�� n   p u��� 4   q t���
�� 
cobj� m   r s���� � o   p q���� 0 running_browsers  ��  � L   y ��� n   y ���� 1   � ���
�� 
bhit� l  y ������� I  y �����
�� .sysodlogaskr        TEXT� m   y z�� ��� B W h i c h   b r o w s e r   d o   y o u   w a n t   t o   u s e ?� ����
�� 
btns� l  { ������� b   { ���� J   { ~�� ���� m   { |�� ���  C a n c e l��  � o   ~ ���� 0 running_browsers  ��  ��  � �����
�� 
dflt� m   � ����� ��  ��  ��  ��  ��  J m     ���                                                                                  syui  alis    �  Macintosh HD               ��vH+   	��SystemUIServer.app                                              
N��m
        ����  	                CoreServices    �� �      �m�z     	�� 	F^ 	F[  >Macintosh HD:System: Library: CoreServices: SystemUIServer.app  &  S y s t e m U I S e r v e r . a p p    M a c i n t o s h   H D  .System/Library/CoreServices/SystemUIServer.app  / ��  H ���� L   � ��� m   � ��� ���   S a f a r i   o r   C h r o m e��  C ��� l     ��������  ��  ��  � ��� i    ��� I      ������� "0 getpagecontents GetPageContents� ���� o      ���� 0 user_browser  ��  ��  � k     <�� ��� Z     9����� =    ��� o     ���� 0 user_browser  � m    �� ���  S a f a r i� O   ��� r   
 ��� l  
 ������ n   
 ��� m    ��
�� 
ctxt� 4   
 ���
�� 
docu� m    �� ��  ��  � o      �~�~ 0 page_contents  � m    ���                                                                                  sfri  alis    N  Macintosh HD               ��vH+    D
Safari.app                                                      5Q�N��        ����  	                Applications    �� �      �N�d      D  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  � ��� =   ��� o    �}�} 0 user_browser  � m    �� ���  G o o g l e   C h r o m e� ��|� O   4��� O     3��� r   ) 2��� I  ) 0�{�z�
�{ .CrSuExJanull���     obj �z  � �y��x
�y 
JvSc� m   + ,�� ��� . d o c u m e n t . b o d y . i n n e r T e x t�x  � o      �w�w 0 page_contents  � n     &��� 1   $ &�v
�v 
acTa� 4     $�u�
�u 
cwin� m   " #�t�t � m    ���                                                                                  rimZ  alis    �  Macintosh HD               ��vH+   �Google Chrome.app                                               �D�ڬ�        ����  	                Applications    �� �      ��e     � �� ��  <Macintosh HD:Users: karrrsa: Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  ,Users/karrrsa/Applications/Google Chrome.app  / ��  �|  � k   7 9�� ��� l  7 7�s���s  �   We always retutn string   � ��� 0   W e   a l w a y s   r e t u t n   s t r i n g� ��r� L   7 9�� m   7 8�� ���  �r  � ��q� L   : <�� o   : ;�p�p 0 page_contents  �q  � ��� l     �o�n�m�o  �n  �m  � ��� l     �l���l  � j d From: http://vgable.com/blog/2009/04/24/how-to-check-if-an-application-is-running-with-applescript/   � ��� �   F r o m :   h t t p : / / v g a b l e . c o m / b l o g / 2 0 0 9 / 0 4 / 2 4 / h o w - t o - c h e c k - i f - a n - a p p l i c a t i o n - i s - r u n n i n g - w i t h - a p p l e s c r i p t /� ��� i    ��� I      �k��j�k ,0 applicationisrunning ApplicationIsRunning� ��i� o      �h�h 0 appname appName�i  �j  � k     �� � � O     r     I   �g�f
�g .coredoexbool       obj  l   �e�d 6   2   �c
�c 
prcs =   	
	 1   	 �b
�b 
pnam
 o    �a�a 0 appname appName�e  �d  �f   o      �`�` $0 appnameisrunning appNameIsRunning m     �                                                                                  sevs  alis    �  Macintosh HD               ��vH+   	��System Events.app                                               
K��]�f        ����  	                CoreServices    �� �      �^5�     	�� 	F^ 	F[  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��    �_ L     o    �^�^ $0 appnameisrunning appNameIsRunning�_  �  l     �]�\�[�]  �\  �[    l     �Z�Z   \ V From: https://github.com/porada/toggle-default-browser/blob/master/toggle.applescript    � �   F r o m :   h t t p s : / / g i t h u b . c o m / p o r a d a / t o g g l e - d e f a u l t - b r o w s e r / b l o b / m a s t e r / t o g g l e . a p p l e s c r i p t  i     I      �Y�X�W�Y &0 getdefaultbrowser GetDefaultBrowser�X  �W   Q      L     l   �V�U c     5    �T �S
�T 
capp  I    
�R�Q�P�R H0 "getdefaultbrowserbundleindentifier "GetDefaultBrowserBundleIndentifier�Q  �P  
�S kfrmID   m    �O
�O 
capp�V  �U   R      �N�M�L
�N .ascrerr ****      � ****�M  �L   k    !! "#" l   �K$%�K  $ ) # Use Safari as the fallback browser   % �&& F   U s e   S a f a r i   a s   t h e   f a l l b a c k   b r o w s e r# '(' l   �J)*�J  ) D > if `GetDefaultBrowserBundleIndentifier` doesn't find anything   * �++ |   i f   ` G e t D e f a u l t B r o w s e r B u n d l e I n d e n t i f i e r `   d o e s n ' t   f i n d   a n y t h i n g( ,�I, L    -- m    ..�                                                                                  sfri  alis    N  Macintosh HD               ��vH+    D
Safari.app                                                      5Q�N��        ����  	                Applications    �� �      �N�d      D  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  �I   /0/ l     �H�G�F�H  �G  �F  0 1�E1 i    232 I      �D�C�B�D H0 "getdefaultbrowserbundleindentifier "GetDefaultBrowserBundleIndentifier�C  �B  3 k     44 565 l     �A78�A  7 : 4 Use `PlistBuddy` to parse the LaunchServices.plist:   8 �99 h   U s e   ` P l i s t B u d d y `   t o   p a r s e   t h e   L a u n c h S e r v i c e s . p l i s t :6 :;: l     �@<=�@  < W Q extract `LSHandlerRoleAll` from a dict that contains `LSHandlerURLScheme = http`   = �>> �   e x t r a c t   ` L S H a n d l e r R o l e A l l `   f r o m   a   d i c t   t h a t   c o n t a i n s   ` L S H a n d l e r U R L S c h e m e   =   h t t p `; ?�?? I    �>@�=
�> .sysoexecTEXT���     TEXT@ b     ABA b     CDC b     EFE m     GG �HH ^ / u s r / l i b e x e c / P l i s t B u d d y   - c   ' P r i n t   : L S H a n d l e r s '  F l 	  
I�<�;I l   
J�:�9J c    
KLK n    MNM 1    �8
�8 
psxpN l   O�7�6O I   �5P�4
�5 .earsffdralis        afdrP m    �3
�3 afdrpref�4  �7  �6  L m    	�2
�2 
utxt�:  �9  �<  �;  D m    QQ �RR B c o m . a p p l e . L a u n c h S e r v i c e s . p l i s t   |  B l 	  S�1�0S m    TT �UU � g r e p   ' L S H a n d l e r U R L S c h e m e   =   h t t p $ '   - C   2   |   g r e p   ' L S H a n d l e r R o l e A l l   =   '   |   c u t   - d   ' = '   - f   2   |   t r   - d   '   '�1  �0  �=  �?  �E       �/VWXYZ[\]^_`�.�-�/  V �,�+�*�)�(�'�&�%�$�#�"�!�,  0 getuserbrowser GetUserBrowser�+ "0 getpagecontents GetPageContents�* ,0 applicationisrunning ApplicationIsRunning�) &0 getdefaultbrowser GetDefaultBrowser�( H0 "getdefaultbrowserbundleindentifier "GetDefaultBrowserBundleIndentifier
�' .aevtoappnull  �   � ****�& 0 steam_application  �% 0 user_browser  �$ 0 page_contents  �# 0 
steam_keys  �" 0 only_right_characters  �! 0 contains_letter  W � E��ab��   0 getuserbrowser GetUserBrowser�  �  a ������ 0 available_browsers  � 0 default_browser  � 0 running_browsers  � 0 browser  � 0 num_running  b �SV���������������� &0 getdefaultbrowser GetDefaultBrowser
� 
pnam� ,0 applicationisrunning ApplicationIsRunning
� 
bool
� 
kocl
� 
cobj
� .corecnte****       ****
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT
� 
bhit� �� ���lvE�O)j+ �,E�O)�k+ 	 ���& �Y cjvE�O &�[��l 	kh )�k+  
��%E�Y h[OY��O�j 	E�O�j  hY $�k  ��k/EY ���kv�%�l� a ,EUOa X ���
�	cd�� "0 getpagecontents GetPageContents�
 �e� e  �� 0 user_browser  �	  c ��� 0 user_browser  � 0 page_contents  d �������� ������
� 
docu
� 
ctxt
� 
cwin
�  
acTa
�� 
JvSc
�� .CrSuExJanull���     obj � =��  � 
*�k/�-E�UY %��  � *�k/�, *��l 
E�UUY �O�Y �������fg���� ,0 applicationisrunning ApplicationIsRunning�� ��h�� h  ���� 0 appname appName��  f ������ 0 appname appName�� $0 appnameisrunning appNameIsRunningg ��i����
�� 
prcsi  
�� 
pnam
�� .coredoexbool       obj �� � *�-�[�,\Z�81j E�UO�Z ������jk���� &0 getdefaultbrowser GetDefaultBrowser��  ��  j  k ����������.
�� 
capp�� H0 "getdefaultbrowserbundleindentifier "GetDefaultBrowserBundleIndentifier
�� kfrmID  ��  ��  ��  *�*j+ �0�&W 	X  �[ ��3����lm���� H0 "getdefaultbrowserbundleindentifier "GetDefaultBrowserBundleIndentifier��  ��  l  m G��������QT��
�� afdrpref
�� .earsffdralis        afdr
�� 
psxp
�� 
utxt
�� .sysoexecTEXT���     TEXT�� ��j �,�&%�%�%j \ ��n����op��
�� .aevtoappnull  �   � ****n k    dqq   ����  ��  ��  o ���������� 0 possible_key  �� 0 key_char  �� 0 current_window  �� 0 	steam_key  p L?�� +���������������������������������� x � ��� � ��� ��� � ��������� ����� � � � �����n��i��4��k����������3������������������������"&8=
�� 
capp�� 0 steam_application  ��  0 getuserbrowser GetUserBrowser�� 0 user_browser  �� "0 getpagecontents GetPageContents�� 0 page_contents  �� 0 
steam_keys  
�� 
cpar
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
leng�� 	��  
�� 
bool�� 0 only_right_characters  �� 0 contains_letter  
�� 
cha 
�� 
TEXT
�� 
appr
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� .miscactvnull��� ��� null
�� 
ascr
�� 
txdl�� 0 	successes  
�� 
prcs
�� 
cwin
�� 
pnam�� 	0 found  
�� 
ptsz�� 0 s  ��X���
�� .sysodelanull��� ��� nmbr
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI�� 0 window_menu_size  
�� .prcsclicuiel    ��� uiel
�� 
ret 
�� .prcskprsnull���    utxt�� ��e�a)��/E�O �hZ)j+ E�O)�k+ E�OjvE�O ���-[��l kh  ��,�	 ��,�a & {eE` OfE` O L�a -[��l kh a g /a a -� 
fE` Y hOa a -� 
eE` Y hV[OY��O_ 	 	_ a & �a &�6GY hY h[OY�lO��,j  +a �%a %a a a a a �%lva la   !Y [OY�O�j "Oa #_ $a %,FOa &�%a &a '%a a (a )lvl !O�j "OjE` *O �h_ *m*a +a ,/ �*a --j j  _ *kE` *Y hO*a --a .[a /,\Za 091j j _ *kE` *Y hOfE` 1O ]*a --a .[a /,\Za 281[��l kh �a 3,EQ` 4O_ 4�k/a 5	 _ 4�l/a 6a & _ *kE` *Y h[OY��UOkj 7[OY�:OF�[��l kh *a +a 8/(kj 7O lhZ*a 9-a :a ;/a <-a =-j E` >O*a 9-a :a ?/a <-a =a @/j AOkj 7O_ >*a 9-a :a B/a <-a =-j   Y h[OY��O*a 9-a :a C/a <-a =a D/j AOkj 7O_ Ej FOkj 7O_ Ej FOlj 7O�j FOjE` *O gh_ *a G Fh*a --a .[[a /,\Za H8\[a /,\Za I>B1j jjE` *O_ Ej FOa Gj 7[OY��O_ *kE` *Okj 7[OY��U[OY��Oa Ja a Kkvl !U]�                                                                                      @ alis    H  Macintosh HD               ��vH+    D	Steam.app                                                       OR�~�        ����  	                Applications    �� �      ���      D  $Macintosh HD:Applications: Steam.app   	 S t e a m . a p p    M a c i n t o s h   H D  Applications/Steam.app  / ��  ^ �rr  S a f a r i_ �ssl 
 G e t   n o t i f i e d   o f   u p c o m i n g   H u m b l e   B u n d l e s !   E m a i l   a d d r e s s     
 B l o g   S u p p o r t   M y   A c c o u n t   L o g   o u t 
 
 T h i s   p a g e   i s   c l a i m e d   b y   y o u . 
 T h a n k s   f o r   p u r c h a s i n g   t h e   H u m b l e   B u n d l e   w i t h   A n d r o i d   6 ! 
 
 P l e a s e   c h e c k   @ h u m b l e   o n   T w i t t e r   f o r   n e w s   a b o u t   u p d a t e d   d o w n l o a d s   a n d   o t h e r   H u m b l e   B u n d l e   s t a t u s   r e p o r t s .   W h i l e   y o u   a r e   w a i t i n g   f o r   y o u r   d o w n l o a d s   t o   c o m p l e t e ,   p l e a s e   c o n s i d e r   s p r e a d i n g   t h e   w o r d ! 
 
       
 L i k e   w h a t   w e ' r e   d o i n g ?   C l i c k   h e r e   t o   i n c r e a s e   y o u r   o r d e r   a m o u n t ! 
 N o t e :   u s e   t h i s   f o r m   i f   y o u ' d   l i k e   t o   b o o s t   t h e   a m o u n t   r e c o r d e d   o n   y o u r   o r d e r .   I f   y o u   w o u l d   l i k e   t o   p u r c h a s e   a n o t h e r   c o p y ,   p l e a s e   g o   b a c k   t o   t h e   m a i n   p a g e   a n d   s t a r t   a   n e w   p u r c h a s e . 
 C h o o s e   a n y   a m o u n t   o f   m o n e y   i n   U S D : 
   $ 1 0 0 
   $ 5 0 
   $ 2 5 
   $ 1 0 
   C u s t o m   A m o u n t   
 Y o u r   c u r r e n t   t o t a l :   $ 1 0 . 0 0 
 M a k e   s u r e   y o u r   t o t a l   i s   o v e r   $ 4 . 6 8   t o   u n l o c k   t h e   b o n u s   g a m e s . 
 C h o o s e   h o w   y o u   w o u l d   l i k e   t o   d i v i d e   u p   y o u r   c o n t r i b u t i o n : 
 D e f a u l t   s p l i t A l l   t o   c h a r i t y A l l   t o   d e v e l o p e r s C u s t o m i z e . . . 
 D e v e l o p e r s 
 
 C h a r i t y 
 
 H u m b l e   T i p 
 
 N o t e :   t h e   H u m b l e   T i p   g o e s   t o   H u m b l e   B u n d l e ,   I n c .   i t s e l f ,   w h i c h   p a y s   f o r   t h e   b a n d w i d t h   a n d   d e v e l o p m e n t   o f   t h i s   p r o m o t i o n .   Y o u   d e t e r m i n e   h o w   m u c h   w e   d e s e r v e   t o   e a r n   o r   l o s e   f r o m   y o u r   p u r c h a s e . 
             
 T r y   t h e   H u m b l e   B u n d l e   A n d r o i d   A p p   ( b e t a ) 
 A q u a r i a   S t e a m   k e y 
 L P 6 F G - I V 9 T A - B Q 9 2 K 
 F r a c t a l   S t e a m   k e y 
 H Q L G P - N A 3 R F - X 8 9 V L 
 S t e a l t h   B a s t a r d   D e l u x e   S t e a m   k e y 
 M R R Q 8 - F 8 Y 6 D - Z W L R T 
 O r g a n   T r a i l :   D i r e c t o r ' s   C u t   S t e a m   k e y 
 V P H M 2 - R E H L 4 - X D 5 G P 
 F r o z e n   S y n a p s e   M u l t i p l a y e r   a n d   S t e a m   k e y 
 H M B 2 P W 4 D 2 F 1 P K H 7 8 1 3 9 2 
 T h i s   k e y   w i l l   a l l o w   y o u   t o   a c c e s s   t h e   M u l t i p l a y e r   c o n t e n t   a n d   r e d e e m   t h e   g a m e   o n   S t e a m . 
 B r o k e n   S w o r d :   D i r e c t o r ' s   C u t   S t e a m   k e y 
 3 M P 2 F - 8 C K 5 V - W Z W 7 N 
 N i g h t s k y   S t e a m   k e y 
 6 9 F 7 R - B J D 2 H - 6 W D J I 
 M c P i x e l   S t e a m   k e y 
 E V D I Y - H Y T K D - F E 7 E X 
 W a k i n g   M a r s   S t e a m   k e y 
 2 R L H I - R F 2 0 D - H V I D D 
 S t e a m   I n s t r u c t i o n s 
 S t e a m   w i l l   n o t   p r o v i d e   e x t r a   g i f t a b l e   c o p i e s   o f   g a m e s   y o u   a l r e a d y   o w n . 
 A l l   k e y s   a r e   f o r   y o u r   p e r s o n a l   u s e   o n l y . 
 C h o o s e   p l a t f o r m :   A n d r o i d W i n d o w s M a c L i n u x � M u s i c 
 C h o o s e   d o w n l o a d   t y p e :   D i r e c t   l i n k B i t T o r r e n t 
 
 A q u a r i a 
 B i t   B l o t 
 D o w n l o a d 
 2 0 1 . 8   M B   m d 5 
 
 B r o k e n   S w o r d :   D i r e c t o r ' s   C u t 
 R e v o l u t i o n   S o f t w a r e 
 D o w n l o a d 
 1 . 1   G B   m d 5 
 
 F r a c t a l 
 C i p h e r   P r i m e   S t u d i o s 
 D o w n l o a d 
 7 8   M B   m d 5 
 
 F r o z e n   S y n a p s e 
 M o d e   7   G a m e s 
 D o w n l o a d 
 3 1 6 . 2   M B   m d 5 
 2 0 1 2 - 0 6 - 1 4 
 
 M c P i x e l 
 S o s 
 D o w n l o a d   A p p 
 3 3 . 3   M B   m d 5 
 D o w n l o a d   D M G 
 1 1 . 2   M B   m d 5 
 
 N i g h t S k y 
 N i c a l i s 
 D o w n l o a d   ( H D ) 
 1 2 0 . 1   M B   m d 5 
 2 0 1 1 - 1 2 - 1 9 
 D o w n l o a d   ( R e g u l a r ) 
 5 9 . 5   M B   m d 5 
 
 O r g a n   T r a i l :   D i r e c t o r ' s   C u t 
 T h e   M e n   W h o   W e a r   M a n y   H a t s 
 D o w n l o a d 
 5 1 . 9   M B   m d 5 
 2 0 1 3 - 0 1 - 3 1 
 
 S t e a l t h   B a s t a r d   D e l u x e 
 C u r v e   S t u d i o s 
 D o w n l o a d 
 1 1 6 . 3   M B   m d 5 
 2 0 1 3 - 0 6 - 1 9 
 
 W a k i n g   M a r s 
 T i g e r   S t y l e 
 D o w n l o a d 
 3 1 3 . 1   M B   m d 5 
 2 0 1 3 - 0 1 - 1 8 
 $ 6 9 2 , 4 1 3 . 1 5 T o t a l   p a y m e n t s : 1 4 4 , 9 2 1 P u r c h a s e s   # : $ 4 . 7 8 A v e r a g e   p u r c h a s e : $ 4 . 3 4 A v e r a g e   W i n d o w s : $ 5 . 3 5 A v e r a g e   M a c : $ 7 . 1 0 A v e r a g e   L i n u x : i n f o r e a l - t i m e   u p d a t i n g   b y   P u b N u b 
 T o t a l   P a y m e n t s   b y   P l a t f o r m 
 
 M a c 
 W i n d o w s 
 L i n u x 
 L i v e   v i e w e r s : 5 , 6 3 2 A l l   t i m e   r e c o r d : 6 5 , 1 1 7 
 T o p   c o n t r i b u t o r s 
 1 . @ B u r n i n g S e r i e s T o $ 6 5 0 . 0 0 
 2 . P r o t e s t T h e N S A $ 2 5 6 . 0 0 
 3 . @ b r w y a t t $ 2 0 0 . 0 0 
 4 . A   M a g e i a   L i n u x   U s e r $ 1 3 0 . 0 0 
 5 . L i r a n   N u n a $ 1 2 8 . 6 4 
 6 . X e n f l u x $ 1 2 8 . 0 0 
 7 . B a r o n   B e a r t o o t h $ 1 2 3 . 0 0 
 8 . M i c h a e l   T h o m a s   L y o n s $ 1 1 0 . 0 0 
 9 . M e d i t a t e d P i e $ 1 0 0 . 0 0 
 1 0 . @ L i n u x G a m e r s $ 1 0 0 . 0 0 
 Y o u r   H u m b l e   B u n d l e   s e t t i n g s : 
 T h i s   p a g e   i s   c l a i m e d   b y   y o u . 
 W h i c h   p l a t f o r m ( s )   w o u l d   y o u   l i k e   y o u r   c o n t r i b u t i o n   t o   c o u n t   a s ,   f o r   s t a t i s t i c a l   p u r p o s e s ? 
   M a c   O S   X       W i n d o w s       L i n u x       A n d r o i d 
 M a y   w e   s h o w   y o u r   c o n t r i b u t i o n   a m o u n t   p u b l i c l y   u n d e r   a   n a m e   o f   y o u r   c h o i c e ? 
   Y e s .   P l e a s e   t h a n k       N o   t h a n k s . 
 W h i c h   c o u n t r y   d o   y o u   r e s i d e   i n ? 
 
 
 H o m e   "   C o n t a c t   U s   "   J o b s   "   B l o g   "   L o s t   K e y   "   P r i v a c y   P o l i c y   "   T e r m s   o f   S e r v i c e 
       
` ��t�� 	t  uvwxyz{|}��������������u �~~ " L P 6 F G - I V 9 T A - B Q 9 2 Kv � " H Q L G P - N A 3 R F - X 8 9 V Lw ��� " M R R Q 8 - F 8 Y 6 D - Z W L R Tx ��� " V P H M 2 - R E H L 4 - X D 5 G Py ��� ( H M B 2 P W 4 D 2 F 1 P K H 7 8 1 3 9 2z ��� " 3 M P 2 F - 8 C K 5 V - W Z W 7 N{ ��� " 6 9 F 7 R - B J D 2 H - 6 W D J I| ��� " E V D I Y - H Y T K D - F E 7 E X} ��� " 2 R L H I - R F 2 0 D - H V I D D��  ��  ��  ��  ��  ��  ��  
�. boovfals
�- boovtrueascr  ��ޭ