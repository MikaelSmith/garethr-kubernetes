# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_horizontal_pod_autoscaler_spec).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        scaleRef: instance.scaleRef.respond_to?(:to_hash) ? instance.scaleRef.to_hash : instance.scaleRef,
      
    
      
        minReplicas: instance.minReplicas.respond_to?(:to_hash) ? instance.minReplicas.to_hash : instance.minReplicas,
      
    
      
        maxReplicas: instance.maxReplicas.respond_to?(:to_hash) ? instance.maxReplicas.to_hash : instance.maxReplicas,
      
    
      
        cpuUtilization: instance.cpuUtilization.respond_to?(:to_hash) ? instance.cpuUtilization.to_hash : instance.cpuUtilization,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_horizontal_pod_autoscaler_spec #{name}")
    create_instance_of('horizontal_pod_autoscaler_spec', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('horizontal_pod_autoscaler_spec', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_horizontal_pod_autoscaler_spec #{name}")
    destroy_instance_of('horizontal_pod_autoscaler_spec', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('horizontal_pod_autoscaler_spec')
  end

  def build_params
    params = {
    
      
        scaleRef: resource[:scaleRef],
      
    
      
        minReplicas: resource[:minReplicas],
      
    
      
        maxReplicas: resource[:maxReplicas],
      
    
      
        cpuUtilization: resource[:cpuUtilization],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end