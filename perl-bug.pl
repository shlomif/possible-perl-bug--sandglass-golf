#!perl
@g=(0..9,0);
sub r{
    my($y,@x)=@_;
    map{
        ref$_ ? (&$_) :$_
    }
    @d=(@g,
    ($y && sub{@g[$y-1,-1-$y]=($")x2;r(@x)}),
    @g%2|$y?@g:())
}
print r 1,1,3..@g/2-1
