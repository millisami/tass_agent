require "tass_agent/version"

module TassAgent
  extend self
  
  def run
    process_cmd_cpu = "ps -e -o etime,pid,ppid,command,rss,pcpu | grep [u]nicorn | awk '{ sum += $NF } END { print sum }'"

    mem_cmd = "top -b | head -5 | grep -w Mem | awk -F, '{ print $2 }' | awk -Fused '{print $1}' | awk '{print $1}'"

    cpu_cmd = "top -b | head -5 | grep -w Cpu | awk -F, '{print $4 }' | awk -F% '{ print $1 }'"

    puts system(mem_cmd)
    puts system(cpu_cmd)
    puts system(process_cmd_cpu)    
    
    # Results send to remote http service
    
    
  end
end
