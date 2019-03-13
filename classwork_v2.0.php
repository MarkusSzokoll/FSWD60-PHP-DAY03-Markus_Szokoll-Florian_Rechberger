<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
  <title>Add Record to User Table Form</title>
  </head>
  <body>
  <?php
    class Cigarettes
    {
      public $name;
      public $package_size;
      public $tar_amt;
      public $nicotine_amt;

	      function __construct($name, $package_size, $tar_amt, $nicotine_amt)
	      {
	        $this->name= $name;
	        $this->package_size = $package_size;
	        $this->tar_amt = $tar_amt;
	        $this->nicotine_amt = $nicotine_amt;
	      }

		  public function showDetails() {
		      return 'The cigarette brand is  ' . $this->name .
		      ' and has ' . $this->package_size . ' cigarettes in a package' .
		      ', it includes ' . $this->tar_amt . ' mg of tar and '  .
		      $this->nicotine_amt . ' mg of nicotine. ';
	      }


    }
    $my_cigarettes[0] = new Cigarettes("Memphis", "20", "10", "0.8");
    $my_cigarettes[1] = new Cigarettes("Happy Monkey", 20, 8, 0.7);
    $my_cigarettes[2] = new Cigarettes("Hard Breathing", 19, 15, 0.5);
    $my_cigarettes[3] = new Cigarettes("Lucky Strike", 19, 6, 0.2);
    $my_cigarettes[4] = new Cigarettes("Cameleon", 21, 9, 0.6);
    

    foreach ($my_cigarettes as $row) {
    	echo '<p>' . $row->showDetails() . '</p>';
    }
    	/*
      echo "<br>";
      echo $row->name;
      echo "<br>";
      echo $row->package_size;
      echo "<br>";
      echo $row->tar_amt;
      echo "<br>";
      echo $row->nicotine_amt;
      echo "<hr>";
      */
      

  ?>
  </body>
</html>