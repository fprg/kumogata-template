#
# AWS Constants
#

# http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions
AWS_REGION = {
  virginia:   "us-east-1",
  ohio:       "us-east-2",
  california: "us-west-1",
  oregon:     "us-west-2",
  canada:     "ca-central-1",
  ireland:    "eu-west-1",
  frankfurt:  "eu-central-1",
  london:     "eu-west-2",
  tokyo:      "ap-northeast-1",
  seoul:      "ap-northeast-2",
  singapore:  "ap-southeast-1",
  sydney:     "ap-southeast-2",
  mumbai:     "ap-south-1",
  saopaulo:   "sa-east-1",
}

PORT = {
  ssh: 22,
  http: 80,
  https: 443,
  memcached: 11211,
  mysql: 3306,
  mariadb: 3306,
  aurora: 3306,
  postgres: 5432,
  redis: 6379,
  redshift: 5439,
}

DEFAULT_MAINTENANCE_TIME = {
  elasticache: Time.local(2016, 4, 1, 5, 15),
  rds:         Time.local(2016, 4, 1, 5, 30),
  redshift:    Time.local(2016, 4, 1, 5, 45),
}

DEFAULT_SNAPSHOT_NUM = 10
DEFAULT_SNAPSHOT_TIME = {
  elasticache: Time.local(2016, 4, 1, 6, 15),
  rds:         Time.local(2016, 4, 1, 6, 30),
}

EC2_DEFAULT_IMAGE = "amazon linux official"

# https://aws.amazon.com/ec2/pricing/
EC2_INSTANCE_TYPES =
  [
   # Model     vCPU  CPU(Credits/hour)  Mem(GiB)   Storage
   # t2.nano     1     3                0.5       EBS-Only
   # t2.micro    1     6                  1       EBS-Only
   # t2.small    1    12                  2       EBS-Only
   # t2.medium   2    24                  4       EBS-Only
   # t2.large    2    36                  8       EBS-Only
   "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large",

   # Model      vCPU   Mem(GiB)  Storage   Network   EBS(Mbps)
   # m4.large     2      8       EBS-only  Moderate     450
   # m4.xlarge    4     16       EBS-only  High         750
   # m4.2xlarge   8     32       EBS-only  High       1,000
   # m4.4xlarge  16     64       EBS-only  High       2,000
   # m4.10xlarge 40    160       EBS-only  10Gps      4,000
   # m4.16xlarge 64    256       EBS Only  20Gps     10,000
   "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge",

   "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.12xlarge", "m5.24xlarge",

   # Model      vCPU   Mem(GiB)  Storage   EBS(Mbps)
   # c4.large     2   3.75       EBS-Only    500
   # c4.xlarge    4    7.5       EBS-Only    750
   # c4.2xlarge   8     15       EBS-Only  1,000
   # c4.4xlarge  16     30       EBS-Only  2,000
   # c4.8xlarge  36     60       EBS-Only  4,000
   "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge",

   "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.18xlarge",

   # Model      vCPU   Mem(GiB)  SSD Storage(GB)
   # r3.large     2     15.25      1 x 32
   # r3.xlarge    4     30.5       1 x 80
   # r3.2xlarge   8     61         1 x 160
   # r3.4xlarge  16    122         1 x 320
   # r3.8xlarge  32    244         2 x 320
   "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge",

   "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge",

   # Model      vCPU   Mem(GiB) SSD Storage(GB)
   # i2.xlarge    4     30.5    1 x 800
   # i2.2xlarge   8     61      2 x 800
   # i2.4xlarge  16    122      4 x 800
   # i2.8xlarge  32    244      8 x 800
   "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge",

   # Model       vCPU   Mem(GiB)   Storage(GB)     Network(Gbps)
   # x1.16xlarge   64     174.5    1 x 1,920 SSD    10
   # x1.32xlarge  128   1,952      2 x 1,902 SSD    10
   "x1.16xlarge", "x1.32xlarge",
  ]
EC2_DEFAULT_INSTANCE_TYPE = "t2.micro"

ELASTICACHE_DEFAULT_ENGINE = "redis"
ELASTICACHE_DEFAULT_ENGINE_VERSION = {
  memcached: "1.4.24",
  redis: "2.8.24",
}
# https://aws.amazon.com/elasticache/pricing/
ELASTICACHE_NODE_TYPES =
  [
   # Cache Node Type   vCPU   Mem (GiB)   Network Performance
   # cache.t2.micro      1     0.555      Low to Moderate
   # cache.t2.small      1     1.55       Low to Moderate
   # cache.t2.medium     2     3.22       Low to Moderate
   # cache.m3.medium     1     2.78       Moderate
   # cache.m3.large      2     6.05       Moderate
   # cache.m3.xlarge     4    13.3        High
   # cache.m3.2xlarge    8    27.9        High
   # cache.r3.large      2    13.5        Moderate
   # cache.r3.xlarge     4    28.4        Moderate
   # cache.r3.2xlarge    8    58.2        High
   # cache.r3.4xlarge   16   118          High
   # cache.r3.8xlarge   32   237          10 Gigabit
   # cache.m4.large      2     6.42       Moderate
   # cache.m4.xlarge     4    14.28       High
   # cache.m4.2xlarge    8    29.70       High
   # cache.m4.4xlarge   16    60.78       High
   # cache.m4.10xlarge  40   154.64       10 Gigabit
   "cache.t2.micro", "cache.t2.small", "cache.t2.medium",
   "cache.m3.medium", "cache.m3.large", "cache.m3.xlarge",
   "cache.m3.2xlarge", "cache.r3.large", "cache.r3.xlarge",
   "cache.r3.2xlarge", "cache.r3.4xlarge", "cache.r3.8xlarge",
   "cache.m4.large", "cache.m4.xlarge", "cache.m4.2xlarge",
   "cache.m4.4xlarge", "cache.m4.10xlarge",
  ]
ELASTICACHE_DEFAULT_NODE_TYPE = "cache.t2.medium"

# https://aws.amazon.com/rds/pricing/
# http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html
RDS_INSTANCE_CLASSES =
  [
   # Instance Class   vCPU   ECU   Memory (GB)   EBS Optimized   Network Performance
   # db.m4.large       2      6.5    8            450 Mbps         Moderate
   # db.m4.xlarge      4     13     16            750 Mbps         High
   # db.m4.2xlarge     8     25.5   32            1000 Mbps        High
   # db.m4.4xlarge    16     53.5   64            2000 Mbps        High
   # db.m4.10xlarge   40    124.5  160           4000 Mbps        10 GBps
   # db.r3.large       2      6.5   15             No              Moderate
   # db.r3.xlarge      4     13     30.5           500 Mbps        Moderate
   # db.r3.2xlarge     8     26     61            1000 Mbps        High
   # db.r3.4xlarge    16     52    122            2000 Mbps        High
   # db.r3.8xlarge    32    104    244             No              10 Gbps
   # db.t2.micro       1      1      1             No              Low
   # db.t2.small       1      1      2             No              Low
   # db.t2.medium      2      2      4             No              Moderate
   # db.t2.large       2      2      8             No              Moderate
   "db.m4.large", "db.m4.xlarge", "db.m4.2xlarge", "db.m4.4xlarge", "db.m4.10xlarge",
   "db.r3.large", "db.r3.xlarge", "db.r3.2xlarge", "db.r3.4xlarge", "db.r3.8xlarge",
   "db.t2.micro", "db.t2.small", "db.t2.medium", "db.t2.large",
  ]
RDS_DEFAULT_INSTANCE_CLASS = "db.t2.medium"
RDS_DEFAULT_ENGINE = "mysql"
RDS_DEFAULT_ENGINE_VERSION = {
  mysql: "5.7.17",
  mariadb: "10.1.23",
  aurora: "5.6.10a",
  postgres: "9.6.2",
}

# https://aws.amazon.com/redshift/pricing/
REDSHIFT_NODE_TYPES =
  [
   # Node Size   vCPU   ECU    RAM (GiB)   Slices Per Node   Storage Per Node   Node Range   Total Capacity
   # ds1.xlarge    2      4.4     15               2                2 TB HDD       1–32          64 TB
   # ds1.8xlarge  16     35      120              16               16 TB HDD       2–128          2 PB
   # ds2.xlarge    4     13       31               2                2 TB HDD       1–32          64 TB
   # ds2.8xlarge  36    119      244              16               16 TB HDD       2–128          2 PB
   # dc1.large     2      7       15               2              160 GB SSD       1–32           5.12 TB
   # dc1.8xlarge  32    104      244              32             2.56 TB SSD       2–128        326 TB
   "ds1.xlarge", "ds1.8xlarge", "ds2.xlarge", "ds2.8xlarge", "dc1.large", "dc1.8xlarge",
  ]
REDSHIFT_DEFAULT_NODE_TYPE = "ds1.xlarge"

# https://aws.amazon.com/elasticmapreduce/pricing/
EMR_INSTANCE_TYPES =
  [
   "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge",
   "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge",
   "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge",
  ]
EMR_DEFAULT_INSTANCE_TYPE = "c4.large"

# http://docs.aws.amazon.com/ElasticMapReduce/latest/ReleaseGuide/emr-whatsnew.html
EMR_DEFAULT_RELEASE = "emr-4.6.0"

ELB_ACCESS_LOG_ACCOUNT_ID = {
  "us-east-1": "127311923021",
  "us-west-2": "797873946194",
  "us-west-1": "027434742980",
  "eu-west-1": "156460612806",
  "eu-central-1": "054676820928",
  "ap-southeast-1": "114774131450",
  "ap-northeast-1": "582318560864",
  "ap-southeast-2": "783225319266",
  "ap-northeast-2": "600734575887",
  "sa-east-1": "507241528517",
}

# http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html
ELASTIC_BEANTALK_LINUX = "64bit Amazon Linux 2017.03"
ELASTIC_BEANTALK_PLATFORM = {
  packer: "#{ELASTIC_BEANTALK_LINUX} v2.2.0 running Packer 1.0.0",
  docker: "#{ELASTIC_BEANTALK_LINUX} v2.6.0 running Docker 1.12.6",
  go: "#{ELASTIC_BEANTALK_LINUX} v2.4.0 running Go 1.7",
  java: "#{ELASTIC_BEANTALK_LINUX} v2.5.0 running Java 8",
  java_tomcat: "#{ELASTIC_BEANTALK_LINUX} v2.6.0 running Tomcat 8 Java 8",
  windows_server: "64bit Windows Server 2012 R2 v1.2.0 running IIS 8.5",
  node: "#{ELASTIC_BEANTALK_LINUX} v4.1.0 running Node.js",
  php: "#{ELASTIC_BEANTALK_LINUX} v2.4.0 running PHP 7.0",
  python: "#{ELASTIC_BEANTALK_LINUX} v2.4.0 running Python 3.4",
  ruby_puma: "#{ELASTIC_BEANTALK_LINUX} v2.4.0 running Ruby 2.3 (Puma)",
  ruby_passenger: "#{ELASTIC_BEANTALK_LINUX} v2.4.0 running Ruby 2.3 (Passenger Standalone)",
}

ELASTIC_BEANTALK_EC2_DEFAULT_ROLE = "aws-elasticbeanstalk-ec2-role"
