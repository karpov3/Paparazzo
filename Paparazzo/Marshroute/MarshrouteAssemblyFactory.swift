public final class MarshrouteAssemblyFactory:
    CameraAssemblyFactory,
    MediaPickerMarshrouteAssemblyFactory,
    ImageCroppingAssemblyFactory,
    PhotoLibraryMarshrouteAssemblyFactory
{
    private let theme: PaparazzoUITheme
    
    public init(theme: PaparazzoUITheme = PaparazzoUITheme()) {
        self.theme = theme
    }
    
    func cameraAssembly(initialActiveCameraType: CameraType) -> CameraAssembly {
        return CameraAssemblyImpl(theme: theme, initialActiveCameraType: initialActiveCameraType)
    }
    
    public func mediaPickerAssembly() -> MediaPickerMarshrouteAssembly {
        return MediaPickerMarshrouteAssemblyImpl(assemblyFactory: self, theme: theme)
    }

    func imageCroppingAssembly() -> ImageCroppingAssembly {
        return ImageCroppingAssemblyImpl(theme: theme)
    }

    public func photoLibraryAssembly() -> PhotoLibraryMarshrouteAssembly {
        return PhotoLibraryMarshrouteAssemblyImpl(theme: theme)
    }
}
