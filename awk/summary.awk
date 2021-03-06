/gold/ { num_gold++; wt_gold += $2 }
/silver/ { num_silver++; wt_silver+= $2 }

END { 
  val_gold = 485 * wt_gold;
  val_silver = 16 * wt_silver;

  total = val_gold + val_silver;  
  print "Summary data for coin collection:";
  printf ("\n");
  printf ("   Gold pieces:                %2d\n", num_gold);
  printf ("   Weight of gold pieces:      %5.2f\n", wt_gold);
  printf ("   Value of gold pieces:     %7.2f\n", val_gold);
  printf ("\n");
  printf ("   Silver pieces:                %2d\n", num_silver);
  printf ("   Weight of silver pieces:      %5.2f\n", wt_silver);
  printf ("   Value of silver pieces:     %7.2f\n", val_silver);
  printf ("\n");
  printf ("   Total number of pieces:       %2d\n", NR);
  printf ("   Value of collection:        %7.2f\n", total);
}
