
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (is-Cons Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (or (is-Cons l1) (= l1 Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Cons l1) (= l3 Nil)) )
(assert (and (= l1 l2) (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (is-Cons l1) )
(assert (or (= l3 Nil) (= l1 l0) (is-Cons l1)) )
(assert (and (is-Cons l3) (= l1 l0) (= l3 Nil)) )
(check-sat)
