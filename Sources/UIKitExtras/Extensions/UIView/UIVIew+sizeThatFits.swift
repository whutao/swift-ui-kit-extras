#if canImport(UIKit)
import CoreGraphicsExtras
import UIKit

extension UIView {
    
    /// Asks the view to calculate and return the height that best fits the specified width.
    @inlinable
    public func heightForWidth(_ width: CGFloat) -> CGFloat {
        let size = CGSize(width: width, height: .greatestFiniteMagnitude)
        return sizeThatFits(size).height
    }
    
    /// Asks the view to calculate and return the width that best fits the specified height.
    @inlinable
    public func widthForHeight(_ height: CGFloat) -> CGFloat {
        let size = CGSize(width: .greatestFiniteMagnitude, height: height)
        return sizeThatFits(size).width
    }
}
#endif
