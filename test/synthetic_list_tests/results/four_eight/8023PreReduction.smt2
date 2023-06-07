
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
(assert (and (is-Cons Nil) (= l3 l3) (= l3 l0) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l1 l1)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons l3) (is-Nil l2) (is-Cons l3)) )
(assert (and (is-Cons Nil) (= l1 l2) (= l2 l2) (= l2 Nil)) )
(assert (and (= l3 Nil) (= l3 Nil)) )
(assert (not (= l3 l2)) )
(check-sat)