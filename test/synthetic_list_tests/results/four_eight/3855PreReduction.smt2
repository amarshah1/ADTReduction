
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
(assert (and (= l1 Nil) (= l3 Nil)) )
(assert (and (= l2 Nil) (= l1 l0)) )
(assert (is-Cons l3) )
(assert (and (is-Cons Nil) (= l1 Nil)) )
(assert (or (= l2 l2) (= l3 Nil) (= l0 l1)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l1 Nil) (= l2 l3)) )
(assert (not (is-Cons l0)) )
(assert (not (= l0 l3)) )
(check-sat)
