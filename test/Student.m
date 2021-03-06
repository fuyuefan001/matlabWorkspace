
    
classdef Student
   properties
      name = unNamed';
      SampleNumber = 0;
      Stress
      Strain
   end
   properties (Dependent)
      Modulus
   end
   
   methods
      function td = TensileData(material,samplenum,stress,strain)
         if nargin > 0
            td.Material = material;
            td.SampleNumber = samplenum;
            td.Stress = stress;
            td.Strain = strain;
         end
      end % TensileData
   end
   
   methods
      function obj = set.Material(obj,material)
         if ~(strcmpi(material,'aluminum') ||...
               strcmpi(material,'stainless steel') ||...
               strcmpi(material,'carbon steel'))
            error('Material must be aluminum, stainless steel, or carbon steel')
         end
         obj.Material = material;
      end % Material set function
      
      function modulus = get.Modulus(obj)
         ind = find(obj.Strain > 0); % Find nonzero strain
         modulus = mean(obj.Stress(ind)./obj.Strain(ind));
      end % Modulus get function
      
      function obj = set.Modulus(obj,~)
         fprintf('%s%d\n','Modulus is: ',obj.Modulus)
         error('You cannot set Modulus explicitly');
      end
      
      function disp(td)
         fprintf(1,'Material: %s\nSample Number: %g\nModulus: %1.5g\n',...
            td.Material,td.SampleNumber,td.Modulus);
      end % disp
      
      function plot(td,varargin)
         plot(td.Strain,td.Stress,varargin{:})
         title(['Stress/Strain plot for Sample ',num2str(td.SampleNumber)])
         xlabel('Strain %')
         ylabel('Stress (psi)')
      end % plot
   end
   
   methods (Access = 'private') % Access by class members only
      function m = CalcModulus(td)
         % Over-simplified calculation of Elastic Modulus
         ind = find(td.Strain > 0); % Find nonzero strain
         m = mean(td.Stress(ind)./td.Strain(ind));
      end % CalcModulus
   end
end % classdef