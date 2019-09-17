class Number

  # Potenza di 10 più vicina
  def magnitude(value)

  end

end


# 1   ---> 0
# 5   ---> 0
# 5,4 ---> 0
#
# 5,5 ---> Devo scegliere. Se metto 0 (10^0=1) sto sottostimando, Se metto 1 (10^1=10) sto sovrastimando. Essendo una stima di "tanta quantità" scelgo il maggiore, cioè 1.
# 5,5 ---> 1
#
# 5,6 ---> 1
# 10  ---> 1
# ....
# 1 <= x < 5,5  ---> 0
# 5,5 <= x < 55 ---> 1
# 55 <= x < 555 ---> 2
# ....
#
# ----------------------------
#
# 0,1 ---> 1/10    ---> -1
#
#
# 0,55 <= x < 1    ---> 0
# 0,1 <= x < 0,55  ---> -1
# 0,01 ---> 1/100  ---> -2
#0,055 <= x < 0,55 ---> -2
#
#
#
# .... per 0 non risulta definita,non c'è una potenza di dieci più vicina -INF
# 0,0055 <= x < 0,055 --> -2
# 0,055  <= x < 0,55  --> -1
# 0,55   <= x < 5,5   --> 0
# 5,5    <= x < 55    --> 1