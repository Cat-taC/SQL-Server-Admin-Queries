- - D E L E T E   B a c k u p   H i s t o r y    
 - -   f o r   t h i s   y o u   s h o u l d   h a v e   p r o p e r   p e r m i s s i o n s  
 E X E C   m s d b . d b o . s p _ d e l e t e _ d a t a b a s e _ b a c k u p h i s t o r y   @ d a t a b a s e _ n a m e   =   N ' X X X '  
 G O  
 U S E   [ m a s t e r ]  
 G O  
 - - C h a n g e   D B   t o   S I N G L E   U s e r  
 A L T E R   D A T A B A S E   [ X X X ]   S E T     S I N G L E _ U S E R   W I T H   R O L L B A C K   I M M E D I A T E  
 G O  
 U S E   [ m a s t e r ]  
 G O  
 - - D r o p s   D a t a b a s e  
 D R O P   D A T A B A S E   [ X X X ]  
 G O  
 