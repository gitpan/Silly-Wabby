use Silly::Wabby;

my $text = <<EOF;
From fairest creatures we desire increase,
That thereby beauty's rose might never die,
But as the riper should by time decease,
His tender heir might bear his memory:
But thou contracted to thine own bright eyes,
Feed'st thy light's flame with self-substantial fuel,
Making a famine where abundance lies,
Thy self thy foe, to thy sweet self too cruel:
Thou that art now the world's fresh ornament,
And only herald to the gaudy spring,
Within thine own bud buriest thy content,
And tender churl mak'st waste in niggarding:
Pity the world, or else this glutton be,
To eat the world's due, by the grave and thee.
EOF

print "1..4\n";
my ($wabby, $line);
if ($wabby = Silly::Wabby->new) {
    print "ok 1\n";
}
else {
    print "not ok 1\n";
    exit 1;
}
print "2..4\n";
if ($wabby->add($text)) {
    print "ok 2\n";
}
else {
    print "not ok 2\n";
    exit 1;
}
print "3..4\n";
if ($line = $wabby->spew) {
    print "ok 3\n";
}
else {
    print "not ok 3\n";
    exit 1;
}
print "4..4\n";
if ($line = $wabby->spew("Thy")) {
    print "ok 4\n";
}
else {
    print "not ok 4\n";
    exit 1;
}

