      subroutine vsrec(y,x,n)
      real*4 x(*),y(*)
      do 10 j=1,n
      y(j)=1.d0/x(j)
   10 continue
      return
      end
