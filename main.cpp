#include <iostream>
#include <cmath>

#include <boost/random/linear_congruential.hpp>
#include <boost/random/uniform_int.hpp>
#include <boost/random/uniform_real.hpp>
#include <boost/random/variate_generator.hpp>
#include <boost/generator_iterator.hpp>
#include <boost/random.hpp>
#include <vector>

#include <glog/logging.h>
#include <glog/stl_logging.h>
#include <iostream>

template<int n_>
struct point {
    point() {}

    double &operator[](int const &i) {
        return c[i];
    }

    double c[n_];
    enum {
        size = n_
    };

};


template<int n>
double distance(point<n> p1, point<n> p2) {
    double res = 0;
    for (size_t i = 0; i < n; i++) {
        res += (p1[i] - p2[i]) * (p1[i] - p2[i]);
        printf("res = %f", res);
    }

    return std::sqrt(res);
}

typedef boost::random::mt19937 base_generator_type;
boost::uniform_real<> uni_dist(0, 10);
base_generator_type generator(42u);
boost::variate_generator<base_generator_type &, boost::uniform_real<> > uni(generator, uni_dist);

template<int n>
point<n> *GetRandomPoint() {
    point<n> *p = new point<n>();

    for (size_t i = 0; i < n; ++i) {
        (*p)[i] = uni();
    }
    return p;
}


template<int n>
struct FUCK {
    typedef std::vector<point<n>*> NodeList;
};

template<int n>
struct KNode {
    KNode *left;
    KNode *right;
    point<n> *val;
    int direction;

    static KNode<n> *MakeKNode(int direction) {
        KNode *p = (KNode *) malloc(sizeof(KNode));
        p->left = nullptr;
        p->right = nullptr;
        p->val = nullptr;

    }
};

template<int n>
bool is_leaf(KNode<n> *node) {
    return node->left == nullptr && node->right == nullptr;
}


template<int n>
class KNNSolve {
public:
    typedef typename FUCK<n>::NodeList NodeList;
    typedef typename FUCK<n>::NodeList::iterator iterator;

    KNNSolve() {}

    void insert(point<n> *p) {
        node_list_.push_back(p);
    }

    void build() {
        build_helper(node_list_.begin(), node_list_.end(), 0, root_);
    }

    template<int K>
    void Search() {

    };


private:
    // left close, right open.
    void build_helper(iterator begin, iterator end, int direction, KNode<n> *cur_root) {
        assert(direction < n);
        if (begin == end) {
            return;
        } else {
            std::sort(begin, end, [&](iterator a, iterator b) {
                *(a[direction]) < *(b[direction]);
            });
            iterator mid = begin + (begin - end) / 2;
            cur_root->direction = direction;
            cur_root->val = &*mid;
            direction = (direction + 1) % n;

            if (begin < mid) {
                cur_root->left = KNode<n>::MakeKNode();
                build_helper(begin, mid, direction, cur_root->left);
            }
            if ((mid + 1) < end) {
                cur_root->right = KNode<n>::MakeKNode();
                build_helper(mid + 1, end, direction, cur_root->right);
            }

        }
    }


    NodeList &node_list_;
    KNode<n> *root_;

};

template<int n>
std::ostream &operator<<(std::ostream &os, const point<n> &p) {
    os << "point" << "(";
    for (size_t i = 0; i < n - 1; ++i) {
        os << p[i] << " ,";

    }
    os << p[n] << ")";
    return os;
}


template<int n>
void walk_tree(KNode<n> *root) {
    if (!root) return;
    if (root->val) {
        std::cout << *(root->val);
    }
    walk_tree(root->left);
    walk_tree(root->right);


}


int main() {
//    point<2> p1;
//    p1[0] = 1;
//    p1[1] = 0;
//    point<2> p2;
//    p2[0] = 0;
//    p2[1] = 1;
//    std::cout << distance(p1, p2) << std::endl;
//    return 0;

    KNNSolve<1>::NodeList node_list;
    for(int i=0; i<10; i++){
        node_list.push_back(GetRandomPoint<1>());
        (*node_list.back())[0] = i;
    }



return 0;
}