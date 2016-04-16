jmp code
w equ 80    ; dimensiune dreptunghi
h equ 70
 
 
 
 
code: mov ah, 0
 mov al, 13h ; trecere in mod grafic 320x200
 int 10h



 
 

 
 

 ; latura din stanga
 mov cx, 120
 mov dx, 80+h
 mov al, 15
u3: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 80
 ja u3
 

 ; latura din dreapta
 mov cx, 120+w
 mov dx, 80+h
 mov al, 15    
u4: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 80
 ja u4  
 
 
  ; afisare latura superioara
 mov cx, 120+w ; coloana
 mov dx, 80 ; rand
 mov al, 15 ; alb
u1: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 120 
;dec dx       ;pt latura oblica
;cmp dx, 10   ;
 jae u1
 



 
 ; afisare latura inferioare
 mov cx, 120+w
 mov dx, 80+h
 mov al, 15
u2: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 120
 ja u2


;latura acop stanga
 mov cx, 120 ; coloana
 mov dx, 80 ; rand
 mov al, 80 ; alb
u5: mov ah, 0ch 
 int 10h
 inc cx
 cmp cx, 20 
 dec dx       
 cmp dx, 40  
 jae u5
                   
;latura acop dreapta
 mov cx, 120+w ;
 mov dx, 80 ; rand
 mov al, 80 ; alb
u6: mov ah, 0ch 
 int 10h
 dec cx
 cmp cx, 20 
 dec dx       
 cmp dx, 40   
 jae u6   


;latura acoperis obliga
 mov cx, 160 ; coloana
 mov dx, 40 ; rand
 mov al, 80 ; alb
u7: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 5
 dec dx       ;pt latura oblica
 cmp dx, 5   ;
 jae u7 
 
  ;latura sus obliga
 mov cx, 120 ; coloana
 mov dx, 80 ; rand
 mov al, 15 ; alb
u8: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 15 
 dec dx       ;pt latura oblica
 cmp dx, 45   ;
 jae u8 
 
 
 

;latura jos obliga
 mov cx, 120 ; coloana
 mov dx, 80+h ; rand
 mov al, 15 ; alb
u9: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 15 
 dec dx       ;pt latura oblica
 cmp dx, 115   ;
 jae u9 
 
;spatele
 mov cx, 85 ; coloana
 mov dx, 115 ; rand
 mov al, 15 
u10: mov ah, 0ch 
 int 10h
 dec dx       
 cmp dx, 46 
 jae u10  
   
;latura oblica stanga  laterala acoperis
 mov cx, 80  ; coloana
 mov dx, 50 ; rand
 mov al, 80 
u11: mov ah, 0ch 
 int 10h
 inc cx
 cmp cx, 20 
 dec dx       
 cmp dx, 5   
 jae u11 
 
 
;geam s
 
 mov cx, 150
 mov dx, 110
 mov al, 50
u15: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 130
 ja u15  
 
 ;geam j
 
 mov cx, 150
 mov dx, 95
 mov al, 50
u16: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 130
 ja u16   
 
 
  ;geam  d
 mov cx, 130
 mov dx, 110
 mov al, 50
u17: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 95
 ja u17 

 ;geam  s
 mov cx, 140
 mov dx, 110
 mov al, 50
u18: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 95
 ja u18  
 
 ;geam  s
 mov cx, 150
 mov dx, 110
 mov al, 50
u19: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 95
 ja u19
         
         
         
 ;usa  drp
 mov cx, 160
 mov dx,  150
 mov al, 50
u12: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 125
 ja u12 
 
 ;usa  stg
 mov cx, 175
 mov dx, 150
 mov al, 50
u13: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 125
 ja u13   
 
  ; toc
 mov cx, 175
 mov dx, 125
 mov al, 50
u14: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 160
 ja u14  
 
 
 ; tulpina
 mov cx, 270
 mov dx, 170
 mov al, 15
u30: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 130
 ja u30
 
  ;latura stg     creanga
 mov cx, 270 ; coloana
 mov dx, 135 ; rand
 mov al, 50 ; alb
u31: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 15 
 dec dx       ;pt latura oblica
 cmp dx, 115   ;
 jae u31  
 
  ;latura stg     creanga
 mov cx, 270 ; coloana
 mov dx, 140 ; rand
 mov al, 50 ; alb
u20: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 15 
 dec dx       ;pt latura oblica
 cmp dx, 125   ;
 jae u20   
 
  ;latura stg     creanga
 mov cx, 270 ; coloana
 mov dx, 150 ; rand
 mov al, 50 ; alb
u21: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 15 
 dec dx       ;pt latura oblica
 cmp dx, 120   ;
 jae u21   
  
 
 
 
  ;latura drpt  creanga
 mov cx, 270 ; coloana
 mov dx, 140 ; rand
 mov al, 50 ; alb
u32: mov ah, 0ch ; afisare pixel
 int 10h
 inc cx
 cmp cx, 15 
 dec dx       ;pt latura oblica
 cmp dx, 117   ;
 jae u32  
 
 ;latura drpt  creanga
 mov cx, 270 ; coloana
 mov dx, 148 ; rand
 mov al, 50 ; alb
u22: mov ah, 0ch ; afisare pixel
 int 10h
 inc cx
 cmp cx, 15 
 dec dx       ;pt latura oblica
 cmp dx, 128  ;
 jae u22 
        
        
        
        ;creanga
 mov cx, 280 ; coloana
 mov dx, 130 ; rand
 mov al, 50; alb
u33: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 15 
 dec dx       ;pt latura oblica
 cmp dx, 125   ;
 jae u33  

 
 
 
   
; asteptare apasare tasta
 mov ah,00
 int 16h   
 