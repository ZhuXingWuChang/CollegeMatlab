function [sqmil,hectares] = convacres(inacres)
SQMIL_PER_INACRES = 0.4047;
INACRES_PER_HECTARES = 640;
sqmil = SQMIL_PER_INACRES * inacres;
hectares = inacres / INACRES_PER_HECTARES;
end