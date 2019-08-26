<?php

class makeServiceInterface{

    public function run($attr){

        $servicePath = BASE_DIR . "/service";
        $configProto = APP_CONFIG ."protobuf_config";
        $allFile = get_dir($configProto);
        $service = null;
        foreach ($allFile as $k=>$v) {
            foreach ($v as $k2=>$v2) {
                $content = file_get_contents($k . "/".$v2);
                $rs = null;
                preg_match_all ("/rpc (\w+) \((\w+)\) returns \((\w+)\)/",$content,$rs);
                $serviceTmp = explode(".",$v2);
                $serviceName = $serviceTmp[0];
                $service[$serviceName];
                $method = $rs[1];
                $request = $rs[2];
//                $return = $rs[3];

                $fileContent = "<?php\nclass $serviceName {\n";

                foreach ($method as $k=>$v) {
                    preg_match("/message {$request[$k]} \{([\s\S]*)\}/U",$content,$requestInfo);

                    $paras = explode(";",$requestInfo[1]);

                    $paraFileContent = "";
                    foreach ($paras as $k3=>$v3) {
                        $v3 = trim($v3);
                        $v3 = str_replace("\n","",$v3);
                        if(!$v3)
                            continue;

                        preg_match("/(\w+) (\w+) (.*)/",$v3,$p);
                        $tmp = explode("=",$p[3]);

                        $valueType = trim($p[2]);
                        if($p[2] == 'int32' || $p[2] == 'uin32'||$p[2] == 'int64' || $p[2] == 'uint64'     ){
                            $valueType = 'int';
                        }
                        $info = array('type'=>trim($p[1]) ,'valueType'=>$valueType,'name'=>trim($tmp[0]),'sort'=>trim($tmp[1]));

                        $paraFileContent .= ", {$info['valueType']} \${$info['name']} ";
                        if($info['type'] == 'optional'){
                            $paraFileContent .= " = ";
                            if($valueType == "int"){
                                $paraFileContent .= "  0 ";
                            }elseif($valueType == "string"){
                                    $paraFileContent  .= " ''";
                            }else{
                                exit("protobuf optional err");
                            }
                        }
                    }
                    $paraFileContent = substr($paraFileContent,1);
                    $fileContent .="    function $v($paraFileContent){}\n";
                }

                //function name ( string name, )

            }
            $fileContent .= "}\n";
            var_dump($fileContent);exit;

        }

    }
}