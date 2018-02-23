<?php

namespace Japankitty\Http\Controllers\API;

use Illuminate\Support\Facades\DB;
use Illuminate\Routing\Controller as BaseController;
use \DateTime;

/**
* Class responsible for returning data from Vocabulary database table
*/
class Config extends BaseController
{
    /**
     * Returns current MOTD
     *
     * @return string current MOTD from database
     */
    public function getMOTD()
    {
      //get config from database
      $motdSettingsDB = DB::table('config')->where('setting', 'current_motd')->orwhere('setting','autoupdate_date')->select('setting','value')->get();
      //convert it to something usable
      foreach ($motdSettingsDB as $key => $value) {
        $value= (array)$value;
        $motdSettings [$value["setting"]]= $value["value"];// $value;
      }
      //check if date is older than today
      $today = date('Y-m-d');
      $lastDate = date('Y-m-d', strtotime($motdSettings["autoupdate_date"]));
      if($lastDate < $today) {
        //update base
        $motdSettings["autoupdate_date"] = date_format(new DateTime(), 'Y-m-d');
        DB::table('config')->where('setting', 'autoupdate_date')->update(['value' => $motdSettings["autoupdate_date"]]);
        $motdAmount = DB::table('motds')->count();
        $motdSettings["current_motd"] = ($motdSettings["current_motd"]+1) % $motdAmount;
        DB::table('config')->where('setting', 'current_motd')->update(['value' => $motdSettings["current_motd"]]);
      }
      $allMOTDsDB = DB::table('motds')->select('message')->get();
      foreach ($allMOTDsDB as $key => $value) {
        $value= (array)$value;
        $allMOTDs[] = $value["message"];// $value;
      }
      return $allMOTDs[$motdSettings["current_motd"]];
    }
}
