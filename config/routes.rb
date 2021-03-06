Rails.application.routes.draw do
  namespace :v1 do
    get 'siret/:siret' => '/api/v1/siret#show'
    get 'siren/:siren' => '/api/v1/siren#show'
    get 'full_text/:text' => '/api/v1/full_text#show'
    get 'suggest/:suggest_query' => '/api/v1/suggest#show'
    get 'near_etablissement/:siret' => '/api/v1/near_etablissement#show'
    get 'near_etablissement_geojson/:siret' => '/api/v1/near_etablissement_geojson#show'
    get 'near_point/' => '/api/v1/near_point#show'
  end
end
