#!perl -naF//
sub r{
    my($y,@x)=@_;
    map{
        ref$_ ? (&$_) :$_
    }
    @d=(@F,
    ($y && sub{@F[$y-1,-1-$y]=($")x2;r(@x)}),
    @F%2|$y?@F:())
}
print r 1,1,3..@F/2-1
