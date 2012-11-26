module MyProcs
 GRADE_SCALE_ONE = lambda { |c, pct|
  if( pct == 1 )
   eval "#{c}.new('A')"
  elsif( pct >= 0.5 )
   eval "#{c}.new('C')"
  elsif( pct > 0 )
   eval "#{c}.new('D')"
  else
   eval "#{c}.new('F')"
  end
 }
end
