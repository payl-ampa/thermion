#pragma once

#include <filament/Camera.h>
#include <filament/ColorGrading.h>
#include <filament/Engine.h>
#include <filament/IndexBuffer.h>
#include <filament/RenderableManager.h>
#include <filament/Renderer.h>
#include <filament/Scene.h>
#include <filament/Skybox.h>
#include <filament/TransformManager.h>
#include <filament/VertexBuffer.h>
#include <filament/View.h>

#include <gltfio/AssetLoader.h>
#include <gltfio/FilamentAsset.h>
#include <gltfio/ResourceLoader.h>

#include <camutils/Manipulator.h>

#include <utils/NameComponentManager.h>

#include <math/vec3.h>
#include <math/vec4.h>
#include <math/mat3.h>
#include <math/norm.h>

#include <fstream>
#include <iostream>
#include <string>
#include <chrono>

#include "SceneAssetLoader.hpp"
#include "SceneAsset.hpp"
#include "SceneResources.hpp"

using namespace std;
using namespace filament;
using namespace filament::math;
using namespace gltfio;
using namespace utils;
using namespace camutils;


namespace polyvox {
    class FilamentViewer {
        public:
            FilamentViewer(void* layer, LoadResource loadResource, FreeResource freeResource);
            ~FilamentViewer();

            void loadSkybox(const char* const skyboxUri);
            void removeSkybox();

            void loadIbl(const char* const iblUri);
            void removeIbl();
            
            SceneAsset* loadGlb(const char* const uri);
            SceneAsset* loadGltf(const char* const uri, const char* relativeResourcePath);
            void removeAsset(SceneAsset* asset);

            void updateViewportAndCameraProjection(int height, int width, float scaleFactor);
            void render();

            Manipulator<float>* manipulator;
            
            bool setCamera(SceneAsset* asset, const char* nodeName);
            void destroySwapChain();
            void createSwapChain(void* surface);

            Renderer* getRenderer();

            void setBackgroundImage(const char* resourcePath);

        private:
            void createImageRenderable();
            void loadResources(std::string relativeResourcePath);
            void transformToUnitCube();
            void cleanup();
            
            void* _layer;

            LoadResource _loadResource;
            FreeResource _freeResource;
      
            Scene* _scene;
            View* _view;  
            Engine* _engine;
            Camera* _mainCamera;
            Renderer* _renderer;
    
            SwapChain* _swapChain = nullptr;

            vector<SceneAsset*> _assets;

            AssetLoader* _assetLoader;
            SceneAssetLoader* _sceneAssetLoader;
            NameComponentManager* _ncm;
            std::mutex mtx; // mutex to ensure thread safety when removing assets

            Entity _sun;
            Texture* _skyboxTexture;
            Skybox* _skybox;
            Texture* _iblTexture;
            IndirectLight* _indirectLight;

            MaterialProvider* _materialProvider;

            gltfio::ResourceLoader* _resourceLoader = nullptr;
            gltfio::TextureProvider* _stbDecoder = nullptr;
            bool _recomputeAabb = false;

            bool _actualSize = false;     
            
            float _cameraFocalLength = 0.0f;

            // these flags relate to the textured quad we use for rendering unlit background images
            Texture* _imageTexture = nullptr;
            Entity* _imageEntity = nullptr;
            VertexBuffer* _imageVb = nullptr;
            IndexBuffer* _imageIb = nullptr;
            Material* _imageMaterial = nullptr;
            TextureSampler _imageSampler;
            ColorGrading *colorGrading = nullptr;

    };


}

            

