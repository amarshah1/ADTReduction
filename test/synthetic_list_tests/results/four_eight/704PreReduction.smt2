
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
(assert (is-Cons l3) )
(assert (not (is-Cons Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil) (= l2 Nil) (is-Nil l3)) )
(assert (is-Cons l3) )
(assert (or (is-Cons l3) (= l1 Nil) (= l3 l2)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l0 Nil) (= l0 l1)) )
(assert (and (= l1 l2) (= l2 Nil) (is-Cons l2) (= l3 Nil)) )
(check-sat)
